# Zenplash

ZSH plugin to create files from template folder.

## Usage

![show](./download.gif)

There are 2 modes for Zenplash:

1. create mode: copy the template directory and rename
2. copyin mode: copy files from the template directory

## Installation

### Clone the repo

```bash
cd $ZSH_CUSTOM/plugins
git clone https://github.com/Chivier/zenplash.git
```

### Activate the plugin

Edit `$HOME/.zshrc`

```bash
plugins+=(zenplash)
```

### Define templates

The default templates directory is:
`$ZSH_CUSTOM/plugins/zenplash/templates`

Also, custom path can be set in `$HOME/.config/zenplash.conf`

Each template is held in a folder, naming like 'ALIAS,DETAIL'

ALIAS is the shortcut name for the template, and DETAIL describe this template briefly.

## Todo

- [ ] Create template based on current directory


## Refereces

Thanks to following projects, provides splendid templates for me:

- [kigster/cmake-project-template: This project is aimed at jump-starting a C/C++ project that can build libraries, binaries and have a working unit test suite. It uses CMake build system and is deliberately completely minimal.](https://github.com/kigster/cmake-project-template)
- [Bas-Man/CMake-CPlusPlus-Lib-GTest: Barebones template for C++ library development with Google Test](https://github.com/Bas-Man/CMake-CPlusPlus-Lib-GTest)
- [rvarago/modern-cmake-template: CMake template for an example project composed of executable and library](https://github.com/rvarago/modern-cmake-template)
- [PhDP/cuda-cmake-gtest-gbench-starter: A cross-platform CUDA/C++17 starter project with google test and google benchmark support.](https://github.com/PhDP/cuda-cmake-gtest-gbench-starter)
