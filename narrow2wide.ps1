Add-Type -AssemblyName Microsoft.VisualBasic

function narrow2wide {
  param (
    [Parameter(ValueFromPipeline=$true)]
    [string]
    $String
  )
  process {
    [Microsoft.VisualBasic.Strings]::StrConv($String, [Microsoft.VisualBasic.VbStrConv]::Wide)
  }
}


function wide2narrow {
  param (
    [Parameter(ValueFromPipeline=$true)]
    [string]
    $String
  )
  process {
    [Microsoft.VisualBasic.Strings]::StrConv($String, [Microsoft.VisualBasic.VbStrConv]::Narrow)
  }
}