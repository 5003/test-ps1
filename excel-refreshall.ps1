$EXCEL = New-Object -ComObject Excel.Application
$EXCEL.Visible = $FALSE
$EXCEL.DisplayAlerts = $FALSE
$WORKBOOK = $EXCEL.Workbooks.Open($args[0])

Start-Sleep -Seconds 20
$WORKBOOK.RefreshAll()
$WORKBOOK.Save()
$WORKBOOK.Close()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($WORKBOOK) | Out-Null

$EXCEL.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($EXCEL) | Out-Null
[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()