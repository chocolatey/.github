#requires -Module powershell-yaml

param(
    [Parameter(Mandatory)]
    [string] $Organization,

    [Parameter(Mandatory)]
    [string] $Repository
)

Write-Warning "We are only checking the first 100 labels. If the repository contains more, you need to do manual checks."
$labelJson = . gh label list --repo "$Organization/$Repository" --json name,color,description --limit 100 --sort name | ConvertFrom-Json

$globalLabels = Get-Content "$PSScriptRoot\..\.github\labels.yml" -Raw | ConvertFrom-Yaml

$missingLabels = [System.Collections.Generic.List[hashtable]]::new()

$taskLabelFound = $false

$labelJson | % {
    if ($_.name -eq 'Task') {
        $taskLabelFound = $true
    } else {
        $name = $_.name
        $foundItem = $globalLabels | ? { $_.name -eq $name }
        $foundAlias = $globalLabels | ? { $_.aliases | ? { $_ -eq $name }}

        if ($foundItem) {
            "- Found '$($_.name)'"
        } elseif ($foundAlias) {
            "- Will rename '$name' -> '$($foundAlias.name)'"
        } else {
            $missingLabels.Add(@{ name = $_.name; color = $_.color; description = $_.description})
        }
    }
}


if ($missingLabels.Count -gt 0) {
    Write-Warning "We found $($missingLabels.Count) missing labels not configured globally."
    Write-Warning "Make sure either a local configuration is created with the labels, or the mising"
    Write-Warning "labels are added to the global configuration before synchronizing."

    $missingLabels | % {
        $issueWithLabel = . gh issue list --repo "$Organization/$Repository" --label $_.name --state all
        "Name: $($_.name), Color: $($_.color), Has Issues: $(if ($issueWithLabel) { $true } else { $false }), Description: $($_.description)"
    }
}

if ($taskLabelFound) {
    Write-Warning "We found the label 'Task'. This name is known to cause problems."
    Write-Warning "Please rename the label to 'TaskItem' before doing any synchronization."
}