#Requires -Version 5.1
[CmdletBinding()]
param([string[]]$Agents, [switch]$Copy, [switch]$Yes)
$ErrorActionPreference = 'Stop'
if (-not (Get-Command npx -ErrorAction SilentlyContinue)) { throw 'Install Node.js to use the skills CLI.' }
$taskArguments = @('--yes', 'skills', 'add', $PSScriptRoot, '--skill', 'personal-ui', '--global')
if ($Agents) { $taskArguments += @('--agent') + $Agents }
if ($Copy) { $taskArguments += '--copy' }
if ($Yes) { $taskArguments += '--yes' }
& npx @taskArguments
if ($LASTEXITCODE -ne 0) { throw "Skills installation failed with exit code $LASTEXITCODE." }
