#! /bin/sh -e
### BEGIN INIT INFO
# Provides:          prometheus-node-exporter
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: prometheus-node-exporter
# Description:       prometheus-node-exporter
### END INIT INFO

start() {
  /home/ubuntu/node_exporter-0.18.1.linux-amd64/node_exporter
}

stop() {
  echo node exporter stop
}

restart() {
  echo node exporter restart
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