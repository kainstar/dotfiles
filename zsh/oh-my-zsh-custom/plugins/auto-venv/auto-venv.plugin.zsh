function automatically_activate_python_venv() {
  if [[ -z $VIRTUAL_ENV ]] ; then
    activate_venv
  else
    parentdir="$(dirname ${VIRTUAL_ENV})"
    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      deactivate
      activate_venv
    fi
  fi
}

function activate_venv() {  
  local d n
  d=$PWD
  
  until false 
  do 
  if [[ -f $d/.venv/bin/activate ]] ; then 
    source $d/.venv/bin/activate
    break
  fi
    d=${d%/*}
    # d="$(dirname "$d")"
    [[ $d = *\/* ]] || break
  done
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd automatically_activate_python_venv

