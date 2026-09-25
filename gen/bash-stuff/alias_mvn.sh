#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_mvn.yaml and re-run YAFFA generator.

# Create a temp directory if not already existing
_alias_req_temp_dir() {
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_temp_dir='_alias_req_temp_dir'

# Check that pom.xml exists
_alias_req_pom() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
}
alias req_pom='_alias_req_pom'

# Check that mvn is on PATH
_alias_req_mvn() {
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
}
alias req_mvn='_alias_req_mvn'

# Check that pom.xml exists and mvn is on PATH
_alias_req_pom_and_mvn() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
}
alias req_pom_and_mvn='_alias_req_pom_and_mvn'

# Standard project build with clean, compile, test, and local install
_alias_mci() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mci 'mvn clean install' 'Standard project build with clean, compile, test, and local install' "$@"
}
alias mci='_alias_mci'

# Fast project build skipping test execution
_alias_mcist() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mcist 'mvn clean install -DskipTests' 'Fast project build skipping test execution' "$@"
}
alias mcist='_alias_mcist'

# Package the project (e.g. JAR) without installing to local repository
_alias_mcp() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mcp 'mvn clean package' 'Package the project (e.g. JAR) without installing to local repository' "$@"
}
alias mcp='_alias_mcp'

# Maven Check Updates - Dependencies
_alias_mcu-d() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mcu-d 'mvn versions:display-dependency-updates' 'Maven Check Updates - Dependencies' "$@"
}
alias mcu-d='_alias_mcu-d'

# Maven Check Updates - Dependencies
alias mcu='_alias_mcu-d'

# Maven Check Updates - Dependencies
alias mddu='_alias_mcu-d'

# Maven Check Updates - Plugins
_alias_mcu-p() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mcu-p 'mvn versions:display-plugin-updates' 'Maven Check Updates - Plugins' "$@"
}
alias mcu-p='_alias_mcu-p'

# Maven Check Updates - Plugins
alias mpu='_alias_mcu-p'

# Maven Check Updates - Plugins
alias mdpu='_alias_mcu-p'

# Display the dependency tree for debugging library conflicts
_alias_mdt() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mdt 'mvn dependency:tree' 'Display the dependency tree for debugging library conflicts' "$@"
}
alias mdt='_alias_mdt'

# Maven Effective-Pom - displays the final, fully merged XML configuration
# that Maven actually uses to build your project.
# It resolves all inheritance from the Maven Super POM,
# processes properties interpolation, merges parent POMs,
# and factors in any active build profiles.
# (==> Use alias 'meps' to save it to the temp directory)
_alias_mep() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mep 'mvn help:effective-pom' 'Maven Effective-Pom - displays the final, fully merged XML configuration
that Maven actually uses to build your project.
It resolves all inheritance from the Maven Super POM,
processes properties interpolation, merges parent POMs,
and factors in any active build profiles.
(==> Use alias '\''meps'\'' to save it to the temp directory)
' "$@"
}
alias mep='_alias_mep'

# Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml
_alias_meps() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall meps 'mep > temp/effective-pom.xml' 'Maven Effective-Pom Save - Saves the effective POM to temp/effective-pom.xml' "$@"
}
alias meps='_alias_meps'

# Run unit tests only
_alias_mvnt() {
  _YaffaReq file "pom.xml" "No pom.xml — run from a Maven project root" "" "" abort || return 1
  _YaffaReq cmd "mvn" "mvn not on PATH — install Maven first" "" "" abort || return 1
  _YaffaCall mvnt 'mvn test' 'Run unit tests only' "$@"
}
alias mvnt='_alias_mvnt'
