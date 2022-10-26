# net-core-code-quality-reports
net core code quality reporting tools

![Bats](./images/bats.png)

cobertura-report.bat - gerate html report:

```
 dotnet test --collect:"XPlat Code Coverage"
 reportgenerator -reports:"test\TestResults\**\coverage.cobertura.xml" -targetdir:"coveragereport" -reporttypes:Html
 start .\coveragereport\index.htm
```

![Code coverage](./images/cobertura.png)

run sonarqube:

```
docker run -p 9000:9000 sonarqube
```

sonar.bat - gerenerate sonar code quaility and coverage report:

```
dotnet sonarscanner begin /k:"wheater-forecast" /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
dotnet build --no-incremental
dotnet-coverage collect dotnet test -f xml  -o coverage.xml
dotnet sonarscanner end /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a"
```

![Sonar](./images/sonar.png)

## references
https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage?tabs=windows
https://docs.sonarqube.org/latest/analysis/test-coverage/dotnet-test-coverage/