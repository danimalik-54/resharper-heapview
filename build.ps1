$config = 'Debug'
$nuspec_file = 'ReSharper.HeapView.nuspec'
$package_id = 'ReSharper.HeapView'

# 10.0
./tools/nuget pack $nuspec_file -Exclude 'bin\R2016.1\**;bin\R2016.2\**;bin\R2016.3\**' -Properties "Configuration=$config;ReSharperDep=Wave;ReSharperVer=[4.0,5.0);PackageId=$package_id.R100"

# 2016.1
./tools/nuget pack $nuspec_file -Exclude 'bin\R100\**;bin\R2016.2\**;bin\R2016.3\**' -Properties "Configuration=$config;ReSharperDep=Wave;ReSharperVer=[5.0,6.0);PackageId=$package_id.R2016.1"

# 2016.2
./tools/nuget pack $nuspec_file -Exclude 'bin\R100\**;bin\R2016.1\**;bin\R2016.3\**' -Properties "Configuration=$config;ReSharperDep=Wave;ReSharperVer=[6.0,7.0);PackageId=$package_id.R2016.2"

# 2016.3
./tools/nuget pack $nuspec_file -Exclude 'bin\R100\**;bin\R2016.1\**;bin\R2016.2\**' -Properties "Configuration=$config;ReSharperDep=Wave;ReSharperVer=[7.0,8.0);PackageId=$package_id.R2016.3"