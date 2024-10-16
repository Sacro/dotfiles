## Catppuccin ##
# Import the module
Import-Module Catppuccin

# Set a flavor for easy access
$Flavor = $Catppuccin['Mocha']

# Print a summary of the flavor's colors
# Returns Null, calls Write-Host internally.
# $Flavor.Table()

# Print blocks of the flavor's colors
# Returns a string
# Write-Host $Flavor.Blocks()

# Modified from the built-in prompt function at: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_prompts
# function prompt {
#   $(if (Test-Path variable:/PSDebugContext) {
#       "$($Flavor.Red.Foreground())[DBG]: "
#     }
#     else {
#       ''
#     }) + "$($Flavor.Teal.Foreground())PS $($Flavor.Yellow.Foreground())" + $(Get-Location) +
#   "$($Flavor.Green.Foreground())" + $(if ($NestedPromptLevel -ge 1) {
#       '>>'
#     }) + '> ' + $($PSStyle.Reset)
# }
# The above example requires the automatic variable $PSStyle to be available, so can be only used in PS 7.2+
# Replace $PSStyle.Reset with "`e[0m" for PS 6.0 through PS 7.1 or "$([char]27)[0m" for PS 5.1

# Modified from the official Catppuccin fzf configuration at: https://github.com/catppuccin/fzf/
$ENV:FZF_DEFAULT_OPTS = @"
--color=bg+:$($Flavor.Surface0),bg:$($Flavor.Base),spinner:$($Flavor.Rosewater)
--color=hl:$($Flavor.Red),fg:$($Flavor.Text),header:$($Flavor.Red)
--color=info:$($Flavor.Mauve),pointer:$($Flavor.Rosewater),marker:$($Flavor.Rosewater)
--color=fg+:$($Flavor.Text),prompt:$($Flavor.Mauve),hl+:$($Flavor.Red)
--color=border:$($Flavor.Surface2)
"@

$Colors = @{
  # Largely based on the Code Editor style guide
  # Emphasis, ListPrediction and ListPredictionSelected are inspired by the Catppuccin fzf theme

  # Powershell colours
  ContinuationPrompt     = $Flavor.Teal.Foreground()
  Emphasis               = $Flavor.Red.Foreground()
  Selection              = $Flavor.Surface0.Background()

  # PSReadLine prediction colours
  InlinePrediction       = $Flavor.Overlay0.Foreground()
  ListPrediction         = $Flavor.Mauve.Foreground()
  ListPredictionSelected = $Flavor.Surface0.Background()

  # Syntax highlighting
  Command                = $Flavor.Blue.Foreground()
  Comment                = $Flavor.Overlay0.Foreground()
  Default                = $Flavor.Text.Foreground()
  Error                  = $Flavor.Red.Foreground()
  Keyword                = $Flavor.Mauve.Foreground()
  Member                 = $Flavor.Rosewater.Foreground()
  Number                 = $Flavor.Peach.Foreground()
  Operator               = $Flavor.Sky.Foreground()
  Parameter              = $Flavor.Pink.Foreground()
  String                 = $Flavor.Green.Foreground()
  Type                   = $Flavor.Yellow.Foreground()
  Variable               = $Flavor.Lavender.Foreground()
}

# Set the colours
Set-PSReadLineOption -Colors $Colors

# The following colors are used by PowerShell's formatting
# Again PS 7.2+ only
$PSStyle.Formatting.Debug = $Flavor.Sky.Foreground()
$PSStyle.Formatting.Error = $Flavor.Red.Foreground()
$PSStyle.Formatting.ErrorAccent = $Flavor.Blue.Foreground()
$PSStyle.Formatting.FormatAccent = $Flavor.Teal.Foreground()
$PSStyle.Formatting.TableHeader = $Flavor.Rosewater.Foreground()
$PSStyle.Formatting.Verbose = $Flavor.Yellow.Foreground()
$PSStyle.Formatting.Warning = $Flavor.Peach.Foreground()
## End Catppuccin ##

## Direnv ##

$Env:DIRENV_CONFIG = "$Env:UserProfile\.config\direnv\"
$Env:XDG_CACHE_HOME = "$Env:UserProfile\.cache"
$Env:XDG_DATA_HOME = "$Env:UserProfile\.local\share"

## End Direnv ##

# Git
Import-Module posh-git

# GSudo
Import-Module gsudoModule

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs

# GitHub CLI
if (Get-Command "gh" -ErrorAction SilentlyContinue)
{
    $(gh completion -s powershell | Out-String | Invoke-Expression) 2> $null
}

# GitLab CLI
if (Get-Command "glab" -ErrorAction SilentlyContinue) {
  $(glab completion -s powershell | Out-String | Invoke-Expression) 2> $null
}

# Golangci-lint
if (Get-Command "golangci-lint" -ErrorAction SilentlyContinue)
{
    $(golangci-lint completion powershell | Out-String | Invoke-Expression) 2> $null
}


# GoRelease
if (Get-Command "goreleaser" -ErrorAction SilentlyContinue) {
  $(goreleaser completion powershell | Out-String | Invoke-Expression) 2> $null
}

# Jira
if (Get-Command "jira" -ErrorAction SilentlyContinue) {
  $(jira completion powershell | Out-String | Invoke-Expression) 2> $null
}

# Komorebi
$Env:KOMOREBI_CONFIG_HOME = "$Env:USERPROFILE\.config\komorebi"

# kubectl completion powershell | Out-String | Invoke-Expression

# LSD
if (Get-Command "lsd" -ErrorAction SilentlyContinue)
{
  Set-Alias ls 'lsd'
  function l {lsd -l}
  function la {lsd -a}
  function lla {lsd -la}
  function lt {lsd --tree}
}

# Scoop Completion
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"

# Scoop Search
if (Get-Command "scoop-search" -ErrorAction SilentlyContinue) {
  $(Invoke-Expression (&scoop-search --hook)) 2> $null
}

# # Oh My Posh
# if(Get-Command "oh-my-posh" -ErrorAction SilentlyContinue) {
#   oh-my-posh init pwsh --config ~/scoop/apps/oh-my-posh/current/themes/catppuccin_mocha.omp.json | Invoke-Expression
# }

# Starship
if (Get-Command "starship" -ErrorAction SilentlyContinue)
{
  function Invoke-Starship-TransientFunction {
    &starship module character
  }

  Invoke-Expression (&starship init powershell)

  # Enable-TransientPrompt
}

# Talhelper
if (Get-Command "talhelper" -ErrorAction SilentlyContinue)
{
  $(talhelper completion powershell | Out-String | Invoke-Expression) 2> $null
}

# Tpi
if (Get-Command "tpi" -ErrorAction SilentlyContinue)
{
  $(tpi -g powershell | Out-String | Invoke-Expression) 2> $null
}

# Vfox
if (Get-Command "vfox" -ErrorAction SilentlyContinue)
{
  $("$(vfox activate pwsh)" | Invoke-Expression) 2> $null
}

# Zoxide
if (Get-Command "zoxide" -ErrorAction SilentlyContinue)
{
  $(zoxide init powershell | Out-String | Invoke-Expression) 2> $null
}
