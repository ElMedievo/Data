#/bin/bash
while true
do
java -Xms2000M -Xmx2500M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot-1.14.3.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
