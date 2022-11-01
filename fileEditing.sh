$path = "C:\env.ts"
$content = Get-Content -Path $path
$content -replace [regex]::escape("1.1.1.1"),"2.2.2.2" | Out-File $path
Rename-Item -Path $path -NewName "environment.ts"