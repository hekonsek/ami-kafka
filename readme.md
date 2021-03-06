# Apache Kafka AMI

Golden AMI image of Apache Kafka for AWS EC2.

Image includes:
- Java 11 JRE
- Apache Kafka server
- Apache Zookeeper server
- Prometheus node exporter (port 9100)
- Prometheus JMX exporter for Kafka server (port 9101)
- Docker server

## Usage

Current version of Kafka AMI is `0.3.0` (AMI id `ami-0874ee9615fa7a282`). In order to create new Kafka EC2 instance
execute the following AWS CLI command:

```
$ aws ec2 run-instances --region=us-east-1 --image-id ami-0874ee9615fa7a282 --instance-type m5.large \\ 
  --tag-specifications='ResourceType=instance,Tags=[{Key=Name,Value=kafka}]' \\
  --key-name MyKeyPair
```

## License

This project is distributed under [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0.html).