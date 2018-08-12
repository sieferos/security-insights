#!/bin/sh

if [ "$#" -ne 1 ] ; then
    echo "You must specify path for NetFlow data directory"
    exit
fi

if [ "$(uname)" == "Darwin" ] ; then
  NETFLOW_DATA_DIR=`greadlink -e $1`
else
  NETFLOW_DATA_DIR=`readlink -e $1`
fi

if [ ${#NETFLOW_DATA_DIR} -eq 0 ] ; then
    echo "You must specify valid path for NetFlow data directory"
    exit
fi

echo NetFlow data directory: $NETFLOW_DATA_DIR

docker run --name nfdump-data --volume $NETFLOW_DATA_DIR:/data nfdump-data:custom
if [ "$(uname)" == "Darwin" ] ; then
  docker run --name nfdump-collector --net host --restart always --detach --volume --volumes-from nfdump-data nfdump-collector:custom
else
  docker run --name nfdump-collector --net host --restart always --detach --volume /etc/localtime:/etc/localtime:ro --volumes-from nfdump-data nfdump-collector:custom
fi
