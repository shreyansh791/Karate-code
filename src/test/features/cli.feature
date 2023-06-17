Feature: Executing Shell script Feature

  Background:
    * def command =
"""
function(line,dirPath) {
  karate.exec({ workingDir: dirPath, line: line, useShell: true});
}
"""

  Scenario: Executing Shell script
    * def file = karate.toJavaFile('../features')
    * def path = file.getPath()
    * print "path ",path
    * command('sample.sh',path)