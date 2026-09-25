#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_my.yaml and re-run YAFFA generator.

# Open: Maven Central Repository Search
_alias_mrep() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall mrep 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' "$@"
}
alias mrep='_alias_mrep'

# Open: Maven Central Repository Search
_alias_mvn_central() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall mvn_central 'python -m webbrowser https://search.maven.org/' 'Open: Maven Central Repository Search' "$@"
}
alias mvn_central='_alias_mvn_central'

# Open: Maven Central Repository Search
alias mcrs='_alias_mvn_central'

# Open: Maven Central Repository Search
alias mvnc='_alias_mvn_central'

# Open: (JetBrain) Package Search
_alias_package-search() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall package-search 'python -m webbrowser https://package-search.jetbrains.com' 'Open: (JetBrain) Package Search' "$@"
}
alias package-search='_alias_package-search'

# Open: (JetBrain) Package Search
alias pacs='_alias_package-search'

# Open: (JetBrain) Package Search
alias jbps='_alias_package-search'

# Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project
_alias_bdd() {
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall bdd 'mvn clean verify -PBDD' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall bdd './gradlew jvmTest --tests '\''*Cucumber*'\''' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'pytest.ini'; then
    _YaffaCall bdd 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  elif _YaffaReqTest file 'requirements-dev.txt'; then
    _YaffaCall bdd 'python -m pytest features' 'Run the BDD (feature file) tests — Maven (BDD profile), Gradle (Cucumber runner) or pytest-bdd project' "$@"
  else
    printf '  [error] %s\n' 'No Maven, Gradle or pytest project found here — run '\''bdd'\'' from a project root' >&2
    return 1
  fi
}
alias bdd='_alias_bdd'

# Run the unit (TDD) tests — Maven, Gradle or pytest project
_alias_tdd() {
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall tdd 'mvn clean test' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall tdd './gradlew jvmTest' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'pytest.ini'; then
    _YaffaCall tdd 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  elif _YaffaReqTest file 'requirements-dev.txt'; then
    _YaffaCall tdd 'python -m pytest tests' 'Run the unit (TDD) tests — Maven, Gradle or pytest project' "$@"
  else
    printf '  [error] %s\n' 'No Maven, Gradle or pytest project found here — run '\''tdd'\'' from a project root' >&2
    return 1
  fi
}
alias tdd='_alias_tdd'
