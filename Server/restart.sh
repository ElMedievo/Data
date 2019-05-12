#/bin/bash
while true
do
java -Xms2536M -Xmx2536M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
