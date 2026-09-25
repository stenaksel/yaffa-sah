#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_py.yaml and re-run YAFFA generator.

# Check that python is on PATH
_alias_req_py() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
}
alias req_py='_alias_req_py'

# Create a temp directory if not already existing
_alias_req_ptemp_dir() {
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_ptemp_dir='_alias_req_ptemp_dir'

# Run pip for the current Python with the given arguments (e.g. 'pp install requests')
_alias_pp() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pp 'python -m pip' 'Run pip for the current Python with the given arguments (e.g. '\''pp install requests'\'')' "$@"
}
alias pp='_alias_pp'

# Create a virtual environment in .venv
_alias_pvenv() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pvenv 'python -m venv .venv' 'Create a virtual environment in .venv' "$@"
}
alias pvenv='_alias_pvenv'

# Activate the .venv virtual environment in the current shell
_alias_pva() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  if _YaffaReqTest dir '.venv/Scripts'; then
    _YaffaCall pva 'source .venv/Scripts/activate' 'Activate the .venv virtual environment in the current shell' "$@"
  elif _YaffaReqTest dir '.venv/bin'; then
    _YaffaCall pva 'source .venv/bin/activate' 'Activate the .venv virtual environment in the current shell' "$@"
  else
    printf '  [error] %s\n' 'No .venv found — create one with '\''pvenv'\''' >&2
    return 1
  fi
}
alias pva='_alias_pva'

# Install the project (editable, from pyproject.toml) or its requirements.txt
_alias_pci() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  if _YaffaReqTest file 'pyproject.toml'; then
    _YaffaCall pci 'python -m pip install -e .' 'Install the project (editable, from pyproject.toml) or its requirements.txt' "$@"
  elif _YaffaReqTest file 'requirements.txt'; then
    _YaffaCall pci 'python -m pip install -r requirements.txt' 'Install the project (editable, from pyproject.toml) or its requirements.txt' "$@"
  else
    printf '  [error] %s\n' 'pci: no matching case — needs file '\''pyproject.toml'\'' or file '\''requirements.txt'\''' >&2
    return 1
  fi
}
alias pci='_alias_pci'

# Package the project (sdist and wheel into dist/) — needs the 'build' package
_alias_pcp() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaReq file "pyproject.toml" "No pyproject.toml — run from a Python project root" "" "" abort || return 1
  _YaffaCall pcp 'python -m build' 'Package the project (sdist and wheel into dist/) — needs the '\''build'\'' package' "$@"
}
alias pcp='_alias_pcp'

# Python Check Updates - list installed packages with newer versions available
_alias_pcu-d() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pcu-d 'python -m pip list --outdated' 'Python Check Updates - list installed packages with newer versions available' "$@"
}
alias pcu-d='_alias_pcu-d'

# Python Check Updates - list installed packages with newer versions available
alias pcu='_alias_pcu-d'

# Python Check Updates - list installed packages with newer versions available
alias pddu='_alias_pcu-d'

# Display the dependency tree for debugging library conflicts — needs the 'pipdeptree' package
_alias_pdt() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pdt 'python -m pipdeptree' 'Display the dependency tree for debugging library conflicts — needs the '\''pipdeptree'\'' package' "$@"
}
alias pdt='_alias_pdt'

# Pip Freeze - displays the exact installed package versions
# (the closest Python counterpart of Maven's effective POM).
# (==> Use alias 'pfzs' to save it to the temp directory)
_alias_pfz() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pfz 'python -m pip freeze' 'Pip Freeze - displays the exact installed package versions
(the closest Python counterpart of Maven'\''s effective POM).
(==> Use alias '\''pfzs'\'' to save it to the temp directory)
' "$@"
}
alias pfz='_alias_pfz'

# Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt
_alias_pfzs() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall pfzs 'pfz > temp/pip-freeze.txt' 'Pip Freeze Save - Saves the installed package versions to temp/pip-freeze.txt' "$@"
}
alias pfzs='_alias_pfzs'

# Run the tests with pytest
_alias_pt() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pt 'python -m pytest' 'Run the tests with pytest' "$@"
}
alias pt='_alias_pt'

# Check your Python sources for lint/code style violations — needs the 'ruff' package
_alias_plc() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall plc 'python -m ruff check .' 'Check your Python sources for lint/code style violations — needs the '\''ruff'\'' package' "$@"
}
alias plc='_alias_plc'

# Format your Python sources — needs the 'ruff' package
_alias_plf() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall plf 'python -m ruff format .' 'Format your Python sources — needs the '\''ruff'\'' package' "$@"
}
alias plf='_alias_plf'

# Open: Python Package Index (PyPI)
_alias_pypi() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall pypi 'python -m webbrowser https://pypi.org/' 'Open: Python Package Index (PyPI)' "$@"
}
alias pypi='_alias_pypi'
