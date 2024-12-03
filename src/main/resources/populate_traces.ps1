# Set the path to your JSON file
$filePath = "traces.json"

# Open the file and process each line
Get-Content $filePath | ForEach-Object {
    $line = $_
    # Perform the PUT request for each line using PowerShell's native method
    Invoke-RestMethod -Uri "http://localhost:8083/traces" -Method Post -Body $line -ContentType "application/json"
}