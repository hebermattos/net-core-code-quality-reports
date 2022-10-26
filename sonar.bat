dotnet sonarscanner begin /k:"wheater-forecast" /d:sonar.login="squ_a2f4338e7bf2c4ef82dd1f50c1950f565ae71a98" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
dotnet build --no-incremental
dotnet-coverage collect dotnet test -f xml  -o coverage.xml
dotnet sonarscanner end /d:sonar.login="squ_a2f4338e7bf2c4ef82dd1f50c1950f565ae71a98"