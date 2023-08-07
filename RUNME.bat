@ECHO OFF

:: TODO Pick the correct scenario and comment out the other part

::::: SCENARIO 1: System under test is started once before running the tests

:: Cleanup test output directory
DEL /S /Q "%TEAMSCALE_TEST_OUTPUT%"

:: TODO If your system-under-test consists of multiple components that need to be started individually make a 
:: copy of this script for each component and use the port that you have defined for this specific component.

:: SET TEAMSCALE_JACOCO_AGENT_ARGS=http-server-port=%TEAMSCALE_AGENT_PORT%

::::::: SCENARIO 2: System under test is started and stopped while executing the tests

:: SET TEAMSCALE_JACOCO_AGENT_ARGS="test-env=%TEAMSCALE_TEST_ENV%"

::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::: Start the system under test ::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Start your system under test with the agent attached

:: SET TEAMSCALE_JVM_ARGS=-javaagent:"%TEAMSCALE_JACOCO_AGENT%lib\teamscale-jacoco-agent.jar=out=%TEAMSCALE_TEST_OUTPUT%,%TEAMSCALE_JACOCO_AGENT_ARGS%"

:: TODO Adjust to start your system
:: java %TEAMSCALE_JVM_ARGS% -jar %TEAMSCALE_CLASS_FILES%\main_jar\main.jar

gradlew clean run -PTosca=true