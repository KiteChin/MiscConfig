#!/bin/bash
# star
if [ $1 -eq 1 ]
then
	wget -O config.yaml https://sub.starlink9527.xyz/api/v1/client/subscribe\?token\=2d423cc6d0d09a2785d8c76e957f91f8\&flag\=clash --no-proxy
fi

# 小鸡
if [ $1 -eq 2 ]
then
	wget -O config.yaml https://a.luxury/link/csoRCdBIceX5I555\?clash\=2 --no-proxy
fi

# 魔域
if [ $1 -eq 3 ]
then
	wget -O config.yaml https://mojie.link/api/v1/client/subscribe\?token\=b4df64c2b4a0c90ac2e44d449974c8d1\&flag\=clash --no-proxy
fi

sudo systemctl restart clash.service
