#! /bin/sh -e
### BEGIN INIT INFO
# Provides:          zookeeper
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: zookeeper
# Description:       zookeeper
### END INIT INFO

start() {
  /home/ubuntu/kafka_2.12-2.4.0/bin/zookeeper-server-start.sh -daemon /home/ubuntu/kafka_2.12-2.4.0/config/zookeeper.properties
}

stop() {
  echo ZooKeeper stop
}

restart() {
  echo ZooKeeper restart
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  restart)
    restart
    ;;
  *)
    echo $"Use this options $0 {start|stop|restart}"
    exit 1
esac
exit $?