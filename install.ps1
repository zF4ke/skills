#Requires -Version 5.1
[CmdletBinding()]
param([string]$SkillsFolder = (Join-Path $env:USERPROFILE '.codex\skills'))
$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'personal-ui'
$destination = Join-Path $SkillsFolder 'personal-ui'
if (-not (Test-Path -LiteralPath (Join-Path $source 'SKILL.md'))) { throw 'Run this script from a complete skills checkout.' }
New-Item -ItemType Directory -Force -Path $destination | Out-Null
Get-ChildItem -LiteralPath $source -Force | Copy-Item -Destination $destination -Recurse -Force
Write-Host "Installed personal-ui and its references in $destination"
Write-Host 'Start a new agent session to discover the skill. Invoke it with $personal-ui.'
