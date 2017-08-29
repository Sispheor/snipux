# Rabbitmq

## Admin commands

Cluster status
```
rabbitmqctl cluster_status
```

list queue
```
rabbitmqadmin list queues name
```

Clean queue
```
rabbitmqadmin delete queue name='celery'
```

## Install

Install rabbit and cli tool
```
sudo apt-get install rabbitmq-server amqp-tools
```

Active web ui (optional)
```bash
sudo rabbitmq-plugins enable rabbitmq_management
```

Get the cli and make it available to use
```
wget http://127.0.0.1:15672/cli/rabbitmqadmin
sudo mv rabbitmqadmin /etc/rabbitmqadmin
sudo chmod 755 /etc/rabbitmqadmin
```

Create admin account (when UI installed)
```bash
sudo rabbitmqctl add_user admin p@ssw0rd
sudo rabbitmqctl set_user_tags admin administrator
sudo rabbitmqctl set_permissions -p / admin ".*" ".*" ".*"
```

Install rabbitmqadmin
```
wget http://localhost:15672/cli/rabbitmqadmin
cp rabbitmqadmin /usr/local/bin
chmod 755 /usr/local/bin/rabbitmqadmin
```

## Testing from CLI

Publish a message with amqp-tools in the default rabbitmq exchange (amq.topic) with the topic key "test.light"
```
amqp-publish -e "amq.topic" -r "test.light" -b "your message"
```
e --> exchange name to publish (topic)
b --> message
r --> rouring key (queue name)

Test publish a json message
```
amqp-publish -e "amq.topic" -r "test.light" -b '{"test" : "message"}'
```

## MQTT

Enable mqtt plugin
```
sudo rabbitmq-plugins enable rabbitmq_mqtt
sudo systemctl restart rabbitmq-server
```

## Add TLS to rabbitmq

Update rabbitmq configuration. Edit (or create if the file is not present) a config file `/etc/rabbitmq/rabbitmq.config`
```
[
  {rabbit, [
     {ssl_listeners, [5671]},
     {ssl_options, [{cacertfile,"/path/to/ca.cert"},
                    {certfile,"/path/to/server.crt"},
                    {keyfile,"/path/to/server.key"},
                    {verify,verify_peer},
                    {fail_if_no_peer_cert,false}]}
   ]},
  {rabbitmq_mqtt, [
                  {ssl_listeners,    [8883]},
                  {tcp_listeners,    [1883]}
                ]}

].
```

Restart rabbitmq server to take care of changes
```bash
sudo systemctl restart rabbitmq-server
```
