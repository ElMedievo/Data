#/bin/bash
while true
do
java -Xms2024M -Xmx2024M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
