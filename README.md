# Net core code quality reporting (free) tools

![Executables](./images/executables.png)

install report tool:

```
dotnet tool install -g dotnet-reportgenerator-globaltool
```

coverage.bat - gerate local coverage html report:

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

install coverage collector:

```
dotnet tool install --global dotnet-coverage
```

sonar.bat - gerenerate sonar code quality and coverage report (token must generate in sonarqube administration screen):

```
dotnet sonarscanner begin /k:"wheater-forecast" /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
dotnet build --no-incremental
dotnet-coverage collect dotnet test -f xml  -o coverage.xml
dotnet sonarscanner end /d:sonar.login="squ_2bb9cbd19da3ad7e797edff029f89bee1816843a"
```

![Sonar](./images/sonar.png)

## References

https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage?tabs=windows
https://docs.sonarqube.org/latest/analysis/test-coverage/dotnet-test-coverage/