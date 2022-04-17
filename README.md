
How to Build

### macOS / Homebrew

1. Install Xcode Command Line Tools: `xcode-select --install`
1. Install Homebrew
1. Install Neovim build dependencies:
1. run script

```
brew install ninja libtool automake cmake pkg-config gettext curl
```

```
git clone https://github.com/karchz/unicodeFixedNeovim.git
cd unicodeFixedNeovim
./makeInstall.sh
```

