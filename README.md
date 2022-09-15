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
- [ ] Better CLI theme
  - [ ] Different color for different language
  - [ ] Nord fonts
