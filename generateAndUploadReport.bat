SET TESTWISE_COVERAGE_REPORT=""C:\Users\DELL\Downloads\teamscale-jacoco-agent\teamscale-jacoco-agent\tempo\execution-127_0_0_1-8123.json""

:: Upload to Teamscale
:: TODO Adjust to match your Teamscale instance and user
:: The user must have the "View Project" and "Perform External Uploads" permissions on the project
SET TEAMSCALE_URL=http://54.253.207.240:8080/
SET TEAMSCALE_PROJECT=ravi
SET TEAMSCALE_USER=admin
SET TEAMSCALE_ACCESS_TOKEN=HSUOD9bWNB7MJI3IKTclLl6vbQDgYFpH
SET TEAMSCALE_PARTITION=Tosca
SET TEAMSCALE_COMMIT=main:%TEAMSCALE_REVISION% :: TODO In production, this should point to the git commit timestamp

curl --request POST --user %TEAMSCALE_USER%:%TEAMSCALE_ACCESS_TOKEN% --form "report=@%TESTWISE_COVERAGE_REPORT%" "%TEAMSCALE_URL%api/projects/%TEAMSCALE_PROJECT%/external-analysis/session/auto-create/report?format=TESTWISE_COVERAGE&partition=Tosca%2Tests&message=Tosca%2Test%2Coverage"
