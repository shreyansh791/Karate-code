Feature:

  Scenario:
    * def sleep = function(pause){ java.lang.Thread.sleep(pause*1000) }
    * print 'before'
    * sleep(2)
    * print 'after'