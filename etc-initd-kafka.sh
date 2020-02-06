#! /bin/sh -e
### BEGIN INIT INFO
# Provides:          kafka
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: kafka
# Description:       kafka
### END INIT INFO

start() {
  /home/ubuntu/kafka_2.12-2.4.0/bin/kafka-server-start.sh -daemon /home/ubuntu/kafka_2.12-2.4.0/config/server.properties
}

stop() {
  echo Kafka stop
}

restart() {
  echo Kafka restart
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