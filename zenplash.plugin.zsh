#!/usr/bin/env zsh
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ -e ${HOME}/.config/zenplash.conf ]]; then
    _zenplash_config=(`cat "${HOME}/.config/zenplash.conf"`)
    typeset -g _zpm_template__base_dir="${_zenplash_config/#\~/$HOME}"
else
    typeset -g _zpm_template__base_dir="${0:h}/templates"
fi

if [[ $PMSPEC != *f* ]] {
  fpath+=( "${0:h}/functions" )
}

autoload -Uz zenplash

_templates_list=()
for _template in ${_zpm_template__base_dir}/*,*; do
  _zenplash_arr=("${(@s/,/)_template:t}")
  _zen_name="${_zenplash_arr[1]}"
  _zen_description="${_zenplash_arr[2]}"
  _templates_list+="${_zen_name}:${_zen_description}"
done

function _zenplash() {
  _arguments \
    '*:: :->subcmds' && return 0

  if (( CURRENT == 1 )); then
    _describe -t commands 'Templates' _templates_list
    return
  fi
}

compdef _zenplash zenplash

