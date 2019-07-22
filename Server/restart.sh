#/bin/bash
while true
do
java -Xms3500M -Xmx3500M -Djline.terminal=jline.UnsupportedTerminal -jar Paper-1.14.2.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
