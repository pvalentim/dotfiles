function macos_is_dark() {
    local dark_mode=$(osascript -l JavaScript -e \
        "Application('System Events').appearancePreferences.darkMode.get()")

    if   [[ "$dark_mode" == "true" ]];  then return 0
    elif [[ "$dark_mode" == "false" ]]; then return 1
    else
        return 2
    fi
}



function theme-dark() {
  if macos_is_dark
    export LS_COLORS="$(vivid generate snazzy)"
}

function theme-light() {
  export LS_COLORS="$(vivid generate one-light)"
}

function set-theme() {
  if macos_is_dark; then 
    theme-dark
  else 
    theme-light
  fi
}

zle -N theme-light theme-light
zle -N theme-dark theme-dark

set-theme