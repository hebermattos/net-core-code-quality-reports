dotnet sonarscanner begin /k:"wheater-forecast" /d:sonar.login="123123123"
dotnet build ..\
dotnet sonarscanner end /d:sonar.login="123123213"