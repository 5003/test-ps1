$EXCEL = New-Object -ComObject Excel.Application
$EXCEL.Visible = $FALSE

$WORKBOOK = $EXCEL.Workbooks.Open($args[0])
$EXCEL.Run($args[1])

$EXCEL.Quit()
$EXCEL = $NULL
$WORKBOOK = $NULL