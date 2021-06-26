#!/bin/bash

git clone https://github.com/erikat98/telegram-bot.git
cd telegram-bot
docker image build -t telegram-bot:v1 .
docker volume create bot
docker run -it --mount source=bot,target=/opt telegram-bot:v1

