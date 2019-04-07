:: CTRL+C to exit the loop. May take a few tries.
@echo off
:a
java -Xms500M -Xmx500M -jar Spigot.jar
echo Server restarting in 5 seconds...
goto a