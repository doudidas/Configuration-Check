# Check if Module Exist
Import-Module -Name PowervRA

# setup package folder
$path = "./package"
If(!(test-path $path))
***REMOVED***
      New-Item -ItemType Directory -Force -Path $path
***REMOVED***