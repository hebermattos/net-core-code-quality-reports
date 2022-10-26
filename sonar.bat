dotnet sonarscanner begin /k:"wheater-forecast" /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
dotnet build --no-incremental
dotnet-coverage collect dotnet test -f xml  -o coverage.xml
dotnet sonarscanner end /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a"