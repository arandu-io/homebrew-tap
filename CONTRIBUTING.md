# Contributing

## Sign your commits

Every commit needs a `Signed-off-by` line:

```
git commit -s -m "what changed and why"
```

That line is the [Developer Certificate of Origin](https://developercertificate.org/):
you are stating that you wrote the change, or that you have the right to submit
it under this project's license. It is not a copyright assignment — you keep
your copyright, and this project can never be relicensed behind your back.

We use DCO rather than a CLA on purpose. A CLA would let the project relicense
later, and the price is that every contributor has to sign a legal document
before their first patch.

## Before you open a pull request

```
brew style arandu-io/tap
brew audit --strict --online arandu-io/tap/aru
brew install arandu-io/tap/aru
```

CI runs exactly this, and one more check that only matters here: that the formula
points at the newest published release. A tap whose formula lags is a tap that
installs the wrong program while every check passes.

There is no Go in this repository -- it holds one formula and the files GitHub
asks every repository for. If you came here from another repository in this
project and expected `go test`, that is why it is absent.

## Where a test goes

Nowhere, and that is the honest answer: this repository has no Go. What stands in
for a test suite is `brew audit --strict --online`, which fetches the artifact the
formula names and checks that it is what the formula says it is.

The `install` step in CI is the one that would catch a broken formula, because it
is the only one that runs the program.

## What the commit message says

What changed and why. The why is the part that is not in the diff, and it is the
part someone will need in two years.

No AI attribution of any kind: no `Co-Authored-By` for an assistant, no
"generated with" footer. Commits are authored by the people who submit them.

## Architecture decisions

The decisions this project has already made live in `arandu-io/docs`, and every
one that closed a door has an ADR. If your change contradicts one, say so in the
pull request and argue for the change of decision — that is a normal thing to
do, and it is better than a patch that quietly works around it.
