# skills-marketing-fr installer for Windows (PowerShell)
# Usage, from the downloaded folder:
#   powershell -ExecutionPolicy Bypass -File install\install.ps1
#
# Copies the 6 skills to:
#   %USERPROFILE%\.claude\skills   (Claude Code)
#   %USERPROFILE%\.agents\skills   (Codex, Cursor)
# Nothing else is installed: these skills need no server and no API key.

$ErrorActionPreference = "Stop"
$Repo = Split-Path -Parent $PSScriptRoot
$Skills = Get-ChildItem -Directory (Join-Path $Repo "skills")

Write-Host "`n== skills-marketing-fr - installation ==`n" -ForegroundColor Cyan

$Bases = @(
    (Join-Path $env:USERPROFILE ".claude\skills"),
    (Join-Path $env:USERPROFILE ".agents\skills")
)
foreach ($base in $Bases) {
    New-Item -ItemType Directory -Force $base | Out-Null
    foreach ($s in $Skills) {
        $target = Join-Path $base $s.Name
        if (Test-Path $target) { Remove-Item -Recurse -Force $target }  # replace any previous version
        Copy-Item -Recurse $s.FullName $target
    }
    Write-Host "Skills copied to $base" -ForegroundColor Green
}

Write-Host "`nDone. Restart your agent, then try:"
Write-Host '  "Use the persona skill to build personas for my brand"'
Write-Host ("Installed skills: " + (($Skills | ForEach-Object Name) -join ", "))
