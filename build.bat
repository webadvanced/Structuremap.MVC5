@echo off
set PATH=\
echo building nuget package
NuGet Pack structuremap.mvc5.nuspec -OutputDirectory packages
echo ----------------------------------------------
