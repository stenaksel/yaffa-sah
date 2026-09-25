#!/bin/bash
# Generated content — do not edit directly.
# Edit alias_yaffa.yaml and re-run YAFFA generator.

# Check that Python is on PATH
_alias_req_python() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
}
alias req_python='_alias_req_python'

# Check that Gradle is on PATH
_alias_req_gradle() {
  _YaffaReq cmd "gradlew" "gradlew not on PATH — install Gradle first" "" "" abort || return 1
}
alias req_gradle='_alias_req_gradle'

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
alias yaffa='_YaffaCall yaffa '\''yaffa-p'\'' '\''Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
from the project'\''\'\'''\''s config/ and your user folder'\''\'\'''\''s config/ (For help use: '\''\'\'''\''yaffa --help'\''\'\'''\'')
'\'''

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
alias regen-yaffa='_YaffaCall regen-yaffa '\''yaffa-p'\'' '\''Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
from the project'\''\'\'''\''s config/ and your user folder'\''\'\'''\''s config/ (For help use: '\''\'\'''\''yaffa --help'\''\'\'''\'')
'\'''

# Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
_alias_yaffa-p() {
  _YaffaReq cmd "python" "python not on PATH — install Python first" "" "" abort || return 1
  _YaffaReq file "YAFFA-P/src/generator.py" "To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!" "" "" abort || return 1
  _YaffaCall yaffa-p 'python ./YAFFA-P/src/generator.py generate' 'Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project'\''s config/ and your user folder'\''s config/ (For help use: '\''yaffa --help'\'')
' "$@"
}
alias yaffa-p='_alias_yaffa-p'

# Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your bash files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
_alias_yaffa-k() {
  _YaffaReq file "YAFFA-K/src/jvmMain/kotlin/yaffa/cli/Generator.kt" "To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!" "" "" abort || return 1
  _YaffaCall yaffa-k 'yaffa_k' 'Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your bash files (in <user folder>/gen)
from the project'\''s config/ and your user folder'\''s config/ (For help use: '\''yaffa --help'\'')
' "$@"
}
alias yaffa-k='_alias_yaffa-k'

# Print a greeting message
alias greet='_YaffaCall greet '\''greet_person'\'' '\''Print a greeting message'\'''

# Print a greeting message
alias hi='_YaffaCall hi '\''greet_person'\'' '\''Print a greeting message'\'''
