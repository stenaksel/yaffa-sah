# Generated content — do not edit directly.
# Edit alias_yaffa.yaml and re-run YAFFA generator.

# Check that Python is on PATH
function _alias_req_python {
  if (-not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_python' -Value _alias_req_python -Option AllScope -Force

# Check that Gradle is on PATH
function _alias_req_gradle {
  if (-not (_YaffaReq 'cmd' 'gradlew' 'gradlew not on PATH — install Gradle first' '' '' 'abort')) { return }
}
Set-Alias -Name 'req_gradle' -Value _alias_req_gradle -Option AllScope -Force

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_yaffa {
  _YaffaCall 'yaffa' 'yaffa-p' 'Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa' -Value _alias_yaffa -Option AllScope -Force

# Regenerate YAFFA - run from YAFFA root to regenerate your shell files (in <user folder>/gen, default ~/.yaffa/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
Set-Alias -Name 'regen-yaffa' -Value _alias_yaffa -Option AllScope -Force

# Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_yaffa-p {
  if (-not (_YaffaReq 'cmd' 'python' 'python not on PATH — install Python first' '' '' 'abort')) { return }
  if (-not (_YaffaReq 'file' 'YAFFA-P/src/generator.py' 'To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!' '' '' 'abort')) { return }
  _YaffaCall 'yaffa-p' 'python ./YAFFA-P/src/generator.py generate' 'Regenerate YAFFA (with Python) - run from YAFFA root to regenerate your shell files (in <user folder>/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa-p' -Value _alias_yaffa-p -Option AllScope -Force

# Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your bash files (in <user folder>/gen)
# from the project's config/ and your user folder's config/ (For help use: 'yaffa --help')
function _alias_yaffa-k {
  if (-not (_YaffaReq 'file' 'YAFFA-K/src/jvmMain/kotlin/yaffa/cli/Generator.kt' 'To regenerate YAFFA aliases and shell files you must be in the root YAFFA folder!' '' '' 'abort')) { return }
  _YaffaCall 'yaffa-k' 'yaffa_k' 'Regenerate YAFFA (with Kotlin) - run from YAFFA root to regenerate your bash files (in <user folder>/gen)
from the project''s config/ and your user folder''s config/ (For help use: ''yaffa --help'')
' @args
}
Set-Alias -Name 'yaffa-k' -Value _alias_yaffa-k -Option AllScope -Force

# Print a greeting message
function _alias_greet {
  _YaffaCall 'greet' 'greet_person' 'Print a greeting message' @args
}
Set-Alias -Name 'greet' -Value _alias_greet -Option AllScope -Force

# Print a greeting message
Set-Alias -Name 'hi' -Value _alias_greet -Option AllScope -Force
