#!/usr/bin/with-contenv bashio

INTERVAL=$(bashio::config 'interval')
CUSTOMER=$(bashio::config 'customer')
API_KEY=$(bashio::config 'api_key')
API_PASS=$(bashio::config 'api_pass')
DOMAINLIST=$(bashio::config 'domainlist')
IPV4=$(bashio::config 'ipv4')
IPV6=$(bashio::config 'ipv6')
TTL=$(bashio::config 'change_ttl')

touch /config.php

cat << EOF > /config.php
<?php
define('CUSTOMERNR', '${CUSTOMER}');
define('APIKEY', '${API_KEY}');
define('APIPASSWORD', '${API_PASS}');
define('DOMAINLIST', '${DOMAINLIST}');
define('USE_IPV4', '${IPV6}');
define('USE_IPV6', '${IPV6}');
define('CHANGE_TTL', '${TTL}');
define('APIURL', 'https://ccp.netcup.net/run/webservice/servers/endpoint.php?JSON');
?>
EOF

watch -n ${INTERVAL} php /update.php
