#set timezone env var
#docker run -d  --rm --name wh -p 8065:8080 -e TZ=Europe/Moscow  webh
#mount folder
#docker run -d  --rm --name wh -p 8065:8080 -e TZ=Europe/Moscow  \
# -v /Users/a/dev/docker/docker-playground/resources:/usr/src/app/resources webh

#with volume
#docker run -d  --rm --name wh -p 8065:8080 -e TZ=Europe/Moscow  \
# -v webh-v:/usr/src/app/resources webh

docker run -d --rm -p 27017:27017 --name mng mongo