#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_gradle.yaml and re-run YAFFA generator.

# Check that the Gradle wrapper (gradlew) exists
_alias_req_gradlew() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
}
alias req_gradlew='_alias_req_gradlew'

# Create a temp directory if not already existing
_alias_req_gtemp_dir() {
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
}
alias req_gtemp_dir='_alias_req_gtemp_dir'

# Run the Gradle wrapper with the given tasks/options (e.g. 'gw run')
_alias_gw() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gw './gradlew' 'Run the Gradle wrapper with the given tasks/options (e.g. '\''gw run'\'')' "$@"
}
alias gw='_alias_gw'

# Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)
_alias_gci() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gci './gradlew clean build publishToMavenLocal' 'Standard project build with clean, compile, test, and local (Maven) install (maven-publish plugin)' "$@"
}
alias gci='_alias_gci'

# Fast project build skipping test execution
_alias_gcist() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gcist './gradlew clean build publishToMavenLocal -x test' 'Fast project build skipping test execution' "$@"
}
alias gcist='_alias_gcist'

# Package the project (e.g. JAR) without installing to local repository
_alias_gcp() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gcp './gradlew clean build' 'Package the project (e.g. JAR) without installing to local repository' "$@"
}
alias gcp='_alias_gcp'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
_alias_gcu-d() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gcu-d './gradlew dependencyUpdates' 'Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)' "$@"
}
alias gcu-d='_alias_gcu-d'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
alias gcu='_alias_gcu-d'

# Gradle Check Updates - Dependencies and plugins (ben-manes versions plugin)
alias gddu='_alias_gcu-d'

# Display the dependency tree for debugging library conflicts
_alias_gdt() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gdt './gradlew dependencies' 'Display the dependency tree for debugging library conflicts' "$@"
}
alias gdt='_alias_gdt'

# Gradle Properties - displays the project's resolved properties
# (the closest Gradle counterpart of Maven's effective POM).
# (==> Use alias 'gpropss' to save it to the temp directory)
_alias_gprops() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gprops './gradlew properties' 'Gradle Properties - displays the project'\''s resolved properties
(the closest Gradle counterpart of Maven'\''s effective POM).
(==> Use alias '\''gpropss'\'' to save it to the temp directory)
' "$@"
}
alias gprops='_alias_gprops'

# Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt
_alias_gpropss() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaReq dir "temp" "missing a temp directory" "mkdir -p temp" "Creating a temp directory" abort || return 1
  _YaffaCall gpropss 'gprops > temp/gradle-properties.txt' 'Gradle Properties Save - Saves the project properties to temp/gradle-properties.txt' "$@"
}
alias gpropss='_alias_gpropss'

# Run unit tests only
_alias_gt() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gt './gradlew test' 'Run unit tests only' "$@"
}
alias gt='_alias_gt'

# List the tasks available in this project
_alias_gtasks() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gtasks './gradlew tasks' 'List the tasks available in this project' "$@"
}
alias gtasks='_alias_gtasks'

# Display the build script classpath (plugins and their versions)
_alias_gbe() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gbe './gradlew buildEnvironment' 'Display the build script classpath (plugins and their versions)' "$@"
}
alias gbe='_alias_gbe'

# Stop all running Gradle daemons
_alias_gstop() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaCall gstop './gradlew --stop' 'Stop all running Gradle daemons' "$@"
}
alias gstop='_alias_gstop'

# Open: Gradle Plugin Portal
_alias_gpp() {
  _YaffaReq file "gradlew" "No gradlew — run from a Gradle project root (with the Gradle wrapper)" "" "" abort || return 1
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaCall gpp 'python -m webbrowser https://plugins.gradle.org/' 'Open: Gradle Plugin Portal' "$@"
}
alias gpp='_alias_gpp'

# Open: Gradle Plugin Portal
alias gpps='_alias_gpp'
