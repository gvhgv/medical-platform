$ErrorActionPreference = "Stop"
Add-Type -AssemblyName Microsoft.Office.Interop.Excel

$file1 = "d:\医疗平台\数据 (1).xlsx"
$file2 = "d:\医疗平台\新建 XLSX 工作表 (2).xlsx"

function Read-ExcelFile {
    param([string]$FilePath)

    Write-Host "Reading file: $FilePath"
    $fullPath = (Resolve-Path $FilePath).Path
    Write-Host "Resolved path: $fullPath"

    $excel = New-Object -ComObject Excel.Application
    $excel.Visible = $false
    $excel.DisplayAlerts = $false

    try {
        $workbook = $excel.Workbooks.Open($fullPath)
        $worksheet = $workbook.Worksheets.Item(1)

        $usedRange = $worksheet.UsedRange
        $rowCount = $usedRange.Rows.Count
        $colCount = $usedRange.Columns.Count

        Write-Host "Rows: $rowCount, Columns: $colCount"

        $headers = @()
        for ($col = 1; $col -le $colCount; $col++) {
            $headers += $worksheet.Cells.Item(1, $col).Text
        }
        Write-Host "Headers: $($headers -join ', ')"

        for ($row = 2; $row -le [Math]::Min($rowCount, 100); $row++) {
            $rowData = @{}
            for ($col = 1; $col -le $colCount; $col++) {
                $header = $headers[$col-1]
                $value = $worksheet.Cells.Item($row, $col).Text
                $rowData[$header] = $value
            }
            $line = ($rowData.GetEnumerator() | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ", "
            Write-Host "Row $row`: $line"
        }

        $workbook.Close($false)
    } finally {
        $excel.Quit()
        [System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null
    }
}

Write-Host "=== File 1 ==="
Read-ExcelFile -FilePath $file1

Write-Host "`n=== File 2 ==="
Read-ExcelFile -FilePath $file2