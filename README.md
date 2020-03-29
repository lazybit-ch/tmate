# tmate

[tmate](https://tmate.io/) `docker` image build.

## Build

Images are tagged using the version of the `tmate` apt package installed in the image.

The version of `tmate` is also set in the containers `TMATE_VERSION` environment variable.

## Usage

`tmate` documention is available on [tmate.io](https://tmate.io/).

Example: `docker run --rm -it docker.pkg.github.com/lazybit-ch/tmate/tmate:v2.2.1 -V`
