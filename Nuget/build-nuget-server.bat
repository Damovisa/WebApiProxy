@echo off
set path=.
if not [%1]==[] set path=%1

echo Creating WebProxyApi Package
 %path%\..\.nuget\nuget pack %path%\..\WebApiProxy.Server\WebApiProxy.nuspec -Version 1.0.1.0 -OutputDirectory %path%\..\Nuget\Packages

if errorlevel 1 echo Error creating WebApiProxy Package

