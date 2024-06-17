function prompt 
{
    # Change the basic PowerShell prompt
    "$env:UserName [$(Split-Path -Path (Get-Location) -Leaf)] $ "
}