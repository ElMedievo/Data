#/bin/bash
while true
do
java -Xms3000M -Xmx3000M -Djline.terminal=jline.UnsupportedTerminal -jar Paper-1.14.4.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
