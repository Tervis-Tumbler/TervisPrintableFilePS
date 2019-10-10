function New-TervisPrintableFileURL {
    param (
        $ColorInkImageURL,
        $WhiteInkImageURL,
        $IDPrintedOnDecoration,
        $ProductSize,
        $ProductFormType,
        $CustomyzerProjectID,
        $VuMarkID,
        $PDFPresetName,
        $RemoveDieCutterCalibrationLine,
        $EnvironmentName
    )
    $QueryString = ($PSBoundParameters.GetEnumerator() |
    ForEach-Object {
        "$($_.Key)=$([System.Web.HttpUtility]::UrlEncode($_.Value))"
    }) -join "&"
    
    return @"
https://images2.tervis.com/PrintableFile?$QueryString
"@
}