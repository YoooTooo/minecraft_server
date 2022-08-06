mkdir minecraft-bedrock-server
cd minecraft-bedrock-server

curl -o docker-compose.yml https://raw.githubusercontent.com/itzg/docker-minecraft-bedrock-server/master/examples/docker-compose.yml

docker-compose up --build --no-start
docker-compose start
docker-compose logs -f