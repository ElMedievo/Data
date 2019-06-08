#/bin/bash
while true
do
java -Xms1900M -Xmx1900M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
