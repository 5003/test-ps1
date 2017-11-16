$USER = $args[0]
$PASS = ConvertTo-SecureString -String $args[1] -AsPlainText -Force
$CREDENTIALS = New-Object -TypeName System.Management.Automation.PSCredential($USER, $PASS)

Send-MailMessage -To $USER `
                 -Subject $args[2] `
                 -Body (Get-Content -Path $args[3] -Raw) `
                 -SmtpServer smtp.gmail.com `
                 -Credential $CREDENTIALS `
                 -From $USER `
                 -Port 587 `
                 -UseSsl