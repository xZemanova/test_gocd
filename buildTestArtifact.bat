@ECHO OFF
echo [GOCD Test Simulation] Simple test artifact building example ...

(
  ECHO ^<html^>
  ECHO ^<body^>
  ECHO ^<h3^>An example artifact^</h3^>
  ECHO ^<pre^>
  ECHO ==== ==== ====
  ECHO An example artifact, created on:
  DATE /T
  TIME /T
  ECHO Pipeline which created it: %GO_PIPELINE_NAME%
  ECHO Pipeline counter was: %GO_PIPELINE_COUNTER%
  ECHO Other things to publish, like variables etc.
  ECHO Environment variables: 
  ECHO %GO_test_variable_int
  ECHO %GO_test_variable_string
  ECHO ==== ==== ====
  ECHO ^</pre^>
  ECHO ^<body^>
  ECHO ^</html^>
) >my-test-artifact.html
