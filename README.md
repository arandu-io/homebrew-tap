# homebrew-tap

Homebrew formula for [`aru`](https://github.com/arandu-io/aru), the CLI of the
Arandu framework.

```sh
brew install arandu-io/tap/aru
```

The formula builds from source and needs the Go toolchain, which Homebrew
installs as a build dependency. That is deliberate: there is no release
pipeline to maintain and nothing that can go stale between a tag and a bottle.
`aru` has no third-party dependencies, so the build takes seconds.

Updating for a new release means two lines in `Formula/aru.rb`: the `url` tag
and the `sha256` of the tarball.

```sh
curl -sL https://github.com/arandu-io/aru/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```
