docker run -d -p 30002:30002 --name=30002-30002-link --network k3d-multiserver alpine/socat TCP4-LISTEN:30002,fork,reuseaddr TCP4:172.18.0.2:30002
docker run -d -p 31001:31001 --name=31001-31001-link --network k3d-multiserver alpine/socat TCP4-LISTEN:31001,fork,reuseaddr TCP4:172.18.0.2:31001
docker run -d -p 31002:31002 --name=31002-31002-link --network k3d-multiserver alpine/socat TCP4-LISTEN:31002,fork,reuseaddr TCP4:172.18.0.2:31002
docker run -d -p 31003:31003 --name=31003-31003-link --network k3d-multiserver alpine/socat TCP4-LISTEN:31003,fork,reuseaddr TCP4:172.18.0.2:31003
docker run -d -p 31004:31004 --name=31004-31004-link --network k3d-multiserver alpine/socat TCP4-LISTEN:31004,fork,reuseaddr TCP4:172.18.0.2:31004