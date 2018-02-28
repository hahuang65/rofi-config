#!/bin/sh

if [ $(uname) = "Linux" ]; then
  mkdir -p "${HOME}/.local/share/rofi"
  mkdir -p "${HOME}/.config/rofi"

  theme_dir="${HOME}/.local/share/rofi/themes"

  if [ -d "${theme_dir}" ]; then
    rm -rf "${theme_dir}"
  fi

  ln -sf "${PWD}/themes" "${theme_dir}"
  ln -sf "${PWD}/config" "${HOME}/.config/rofi/config"
fi
