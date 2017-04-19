#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-


function dl () {
  export LANG{,UAGE}=en_US.UTF-8  # make error messages search engine-friendly
  local SELFPATH="$(readlink -m "$BASH_SOURCE"/..)"
  cd "$SELFPATH" || return $?

  local URL="$1"
  URL="${URL##*://}"
  URL="${URL%/robots.txt}"
  URL="${URL%/}"
  local FN="$URL"
  FN="${FN#www.}"
  FN="$(date +%y%m%d)_${FN//./_}.txt"
  echo "$FN <- $URL"
  wget -O "$FN" -c "http://$URL/robots.txt" || return $?

  return 0
}










[ "$1" == --lib ] && return 0; dl "$@"; exit $?
