#/bin/bash
while true
do
java -Xms6144M -Xmx6144M -Djline.terminal=jline.UnsupportedTerminal -jar Spigot.jar
echo "Server restarting in 5 seconds..."
sleep 5
done
