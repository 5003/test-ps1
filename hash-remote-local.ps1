do {
  Start-Sleep -Seconds 30

  $remote = (Get-FileHash -InputStream (New-Object -TypeName System.Net.WebClient).OpenRead(($args[0] -replace '_percent26', '&'))).Hash
  $local = (Get-FileHash -LiteralPath $args[1]).Hash

  Write-Host ".    $remote (remote)"
  Write-Host ".    $local (local)"

  $result = $remote -eq $local
} while ($result -eq 0)