# The aru CLI, built from source.
#
# From source rather than from a released binary, and that is a deliberate
# trade: it needs the Go toolchain, and in exchange there is no release
# pipeline to maintain, no per-platform artifact to sign, and nothing that can
# go stale between a tag and a bottle. aru has no third-party dependencies, so
# the build takes seconds.
class Aru < Formula
  desc "CLI for the Arandu framework: scaffolding, migrations and architecture checks"
  homepage "https://github.com/arandu-io/aru"
  url "https://github.com/arandu-io/aru/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "b7e044b287cc24bc0f96319bea3b53c72c6f7c5358e612996da8c6274f89ea44"
  license "MIT"
  head "https://github.com/arandu-io/aru.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    # The version has to come from the build rather than from a constant nobody
    # updates: a CLI that reports the wrong version sends people to the wrong
    # changelog.
    assert_match version.to_s, shell_output("#{bin}/aru version")

    # Outside a project, aru has to say so rather than fail obscurely -- this is
    # the first thing anyone types after installing.
    output = shell_output("#{bin}/aru migrate 2>&1", 1)
    assert_match "aru new", output

    # A command from the current CLI, so a stale url in this file fails here
    # instead of installing an old aru successfully. That is what happened: the
    # formula sat on v0.3.0 for five minors, and the tap's CI stayed green the
    # whole time -- it was proving the old tag still builds.
    help = shell_output("#{bin}/aru help")
    assert_match "trace", help
    assert_match "schedule:run", help
  end
end
