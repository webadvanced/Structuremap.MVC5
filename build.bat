@echo off
set PATH=\
echo building nuget package
NuGet Pack structuremap.mvc4.nuspec -OutputDirectory packages
echo ----------------------------------------------
