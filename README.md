<p align="center">
  <img src=".github/logo.png" alt="Arandu" width="140" height="140">
</p>

<h1 align="center">arandu-io/homebrew-tap</h1>

<p align="center">The Homebrew tap for the Arandu command line.</p>

<p align="center">
<a href="https://github.com/arandu-io/homebrew-tap/actions/workflows/ci.yml"><img src="https://github.com/arandu-io/homebrew-tap/actions/workflows/ci.yml/badge.svg" alt="Build Status"></a>
<a href="https://github.com/arandu-io/homebrew-tap/tags"><img src="https://img.shields.io/github/v/tag/arandu-io/homebrew-tap?label=version" alt="Latest Version"></a>
<a href="LICENSE.md"><img src="https://img.shields.io/github/license/arandu-io/homebrew-tap" alt="License"></a>
</p>


## About this tap

```sh
brew install arandu-io/tap/aru
```

The formula builds `aru` from source, with the version stamped at build time and
the tarball verified by sha256 — so a binary that reports a version is a binary
built from that tag.

## Learning Arandu

The API reference is generated from the doc comments and lives on
[pkg.go.dev](https://pkg.go.dev/github.com/arandu-io/framework). Every exported
symbol carries one, and that is deliberate: it is the documentation that cannot
drift from the code, because it sits in the same file.

The CLI documents itself. `aru help` lists every command, and each one explains
what it writes and what to do with it. `aru doctor` explains what it found and
what breaks, not which rule was violated.

A guide and a website do not exist yet, and that is a decision rather than a
gap: a guide written against an API that still moves is work done twice, and the
second time is worse — there is wrong documentation published. The site is the
next phase, and it will be an Arandu application.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Before opening a pull request, the three
commands at the top of that file have to pass, and CI runs exactly them.

## Security Vulnerabilities

Please review [our security policy](SECURITY.md) on how to report a
vulnerability. Never open a public issue for one.

## License

Open-sourced software licensed under the [MIT license](LICENSE.md).
