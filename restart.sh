#/bin/bash
while true
do
java -Xms1024M -Xmx1024M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot.jar
echo "Server restarting in 5 seconds..."
sleep 5
done