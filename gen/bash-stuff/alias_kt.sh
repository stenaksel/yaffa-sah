#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_kt.yaml and re-run YAFFA generator.

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
alias kotlin-version='_YaffaCall kotlin-version '\''kotlin_project_version'\'' '\''Detect the Kotlin version configured by the Gradle or Maven project in the current directory'\'''

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
alias version-kotlin='_YaffaCall version-kotlin '\''kotlin_project_version'\'' '\''Detect the Kotlin version configured by the Gradle or Maven project in the current directory'\'''

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
alias ver-kt='_YaffaCall ver-kt '\''kotlin_project_version'\'' '\''Detect the Kotlin version configured by the Gradle or Maven project in the current directory'\'''

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
alias kt_='_YaffaCall kt_ '\''kotlin_project_version'\'' '\''Detect the Kotlin version configured by the Gradle or Maven project in the current directory'\'''

# Detect the Kotlin version configured by the Gradle or Maven project in the current directory
alias kotlin_='_YaffaCall kotlin_ '\''kotlin_project_version'\'' '\''Detect the Kotlin version configured by the Gradle or Maven project in the current directory'\'''

# Check your Kotlin sources for code style violations (Maven or Gradle project)
_alias_ktlc() {
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall ktlc 'mvn ktlint:check' 'Check your Kotlin sources for code style violations (Maven or Gradle project)' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall ktlc './gradlew ktlintCheck' 'Check your Kotlin sources for code style violations (Maven or Gradle project)' "$@"
  else
    printf '  [error] %s\n' 'ktlc: no matching case — needs file '\''pom.xml'\'' or file '\''gradlew'\''' >&2
    return 1
  fi
}
alias ktlc='_alias_ktlc'

# Format your Kotlin sources (Maven or Gradle project)
_alias_ktlf() {
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall ktlf 'mvn ktlint:format' 'Format your Kotlin sources (Maven or Gradle project)' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall ktlf './gradlew ktlintFormat' 'Format your Kotlin sources (Maven or Gradle project)' "$@"
  else
    printf '  [error] %s\n' 'ktlf: no matching case — needs file '\''pom.xml'\'' or file '\''gradlew'\''' >&2
    return 1
  fi
}
alias ktlf='_alias_ktlf'

# Generate project report of code style violations (Maven or Gradle project)
_alias_ktlr() {
  if _YaffaReqTest file 'pom.xml'; then
    _YaffaCall ktlr 'mvn ktlint:ktlint' 'Generate project report of code style violations (Maven or Gradle project)' "$@"
  elif _YaffaReqTest file 'gradlew'; then
    _YaffaCall ktlr './gradlew ktlintCheck; echo "Reports: build/reports/ktlint/"' 'Generate project report of code style violations (Maven or Gradle project)' "$@"
  else
    printf '  [error] %s\n' 'ktlr: no matching case — needs file '\''pom.xml'\'' or file '\''gradlew'\''' >&2
    return 1
  fi
}
alias ktlr='_alias_ktlr'
