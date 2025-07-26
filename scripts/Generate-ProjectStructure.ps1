$scriptName = $MyInvocation.MyCommand.Name
$outputFile = "project_structure.md"

# Gather all files and folders, excluding this script
$items = Get-ChildItem -Recurse -Force | Where-Object {
    $_.FullName -notlike "*\$scriptName" -and $_.Name -ne $scriptName
}

# Project metadata
$totalFiles = ($items | Where-Object { -not $_.PSIsContainer }).Count
$totalFolders = ($items | Where-Object { $_.PSIsContainer }).Count
$totalSize = ($items | Measure-Object -Property Length -Sum).Sum
$totalSizeMB = [math]::Round($totalSize / 1MB, 2)

# Recursively walk tree
function Get-Tree($path, $indent = "") {
    $children = Get-ChildItem -LiteralPath $path | Where-Object { $_.Name -ne $scriptName }

    foreach ($item in $children) {
        if ($item.PSIsContainer) {
            Add-Content $outputFile "$indent[DIR] $($item.Name)/"
            Get-Tree -path $item.FullName -indent ("$indent    ")
        } else {
            Add-Content $outputFile "$indent- $($item.Name)"
        }
    }
}

# Header
@"
# Project Structure

Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
Total Files: $totalFiles
Total Folders: $totalFolders
Total Size: $totalSizeMB MB

---

## File Tree
"@ | Set-Content $outputFile -Encoding UTF8

# Generate structure
Get-Tree -path "."

# Documentation outline
@"

---

## Suggested Documentation Outline

- README.md - Overview, setup instructions, and usage examples.
- CONTRIBUTING.md - Guidelines for contributing.
- CODE_OF_CONDUCT.md - Community standards.
- docs/ - High-level architecture and technical notes.
- tests/ - Test suite structure and examples.
- src/ - Application code breakdown.
- scripts/ - Utility or deployment scripts.

## For LLM-Based Documentation Tools

Use this structure file to:
- Identify directory layout.
- Link code and test files.
- Guide documentation generation for each component.

"@ | Add-Content $outputFile -Encoding UTF8

Write-Host "✅ project_structure.md generated successfully."
