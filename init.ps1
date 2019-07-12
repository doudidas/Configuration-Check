# Check if Module Exist
Import-Module -Name PowervRA

# setup package folder
$path = "./package"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}