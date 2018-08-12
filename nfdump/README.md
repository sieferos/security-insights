```
# /*
# * README.md
# * sieferos: 12/08/2018
# */
```

- [alexanderfefelov/docker-nfdump](https://github.com/alexanderfefelov/docker-nfdump)

```bash
  $ cd ~/github/sieferos/security-insights/nfdump/ && for W in data collector ; do docker build -t nfdump-${W}:custom ${W} ; done

  $ mkdir -p ~/github/sieferos/security-insights/nfdump/dump/
  $ ### cd ~/github/sieferos/security-insights/nfdump/ && ./run.sh $(pwd)/dump

  $ cd ~/github/sieferos/security-insights/nfdump/ && docker run --name nfdump-data --volume $(pwd)/dump:/data nfdump-data:custom
  $ docker run --rm -it --name nfdump-collector --net host --volumes-from nfdump-data nfdump-collector:custom

  $ docker exec -it nfdump-collector bash

    root@linuxkit-025000000001:/tmp# 
```
