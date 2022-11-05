
$path = Read-Host "Enter a directroy: "
 
$hashfile = Read-Host -Prompt "Enter name of the hash file of [$path]"
 
$hash_file = Get-ChildItem -Path $path | Get-FileHash -Algorithm SHA1
 
$hash_value | Export-Csv -Path $hashfile