# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
Set-PoshPrompt powerlevel10k_lean

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -BellStyle None
# Set-PSReadLineOption -PredictionViewStyle ListView


# Alias
Set-Alias vim nvim
Set-Alias grep findstr

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}