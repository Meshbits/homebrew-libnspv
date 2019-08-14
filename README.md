# homebrew-libnspv

homebrew tap for libnspv, a portable C library for creating and manipulating
Komodo-compatible Smart Chains, including the KMD main chain data structures
and interacting with the p2p network.

Disclaimer: this is beta software being actively developed so please help us by
providing the feedback.

# Maintaining this repo

- ensure that [libnspv.rb](libnspv.rb) has the correct info
- ensure that [libnspv] repo has release tag created:
```shell
git tag -a 0.1
git push --tags
```
- ensure correct sha256sum:
```shell
# currently tested on macOS Mojave `10.14.6 (18G87)` only
wget -c https://github.com/jl777/libnspv/archive/0.1.tar.gz
sha256 0.1.tar.gz
```

# Testing the changes locally

Assumes [brew] is installed on your macOS.

```shell
brew update
cp libnspv.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula
brew install libnspv
```

[libnspv]: https://github.com/jl777/libnspv
[brew]: https://docs.brew.sh/Installation
