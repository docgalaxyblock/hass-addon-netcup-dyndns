# Home Assistant Add-on: Netcup DynDNS

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

Automatically update your Netcup domain(s)

_This Addon is based on [this PHP script](https://github.com/stecklars/dynamic-dns-netcup-api) by [Lars-Sören Steck](https://github.com/stecklars)_

[aarch64-shield]: https://img.shields.io/badge/aarch64-%3F-lightgrey.svg
[amd64-shield]:   https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]:   https://img.shields.io/badge/armhf-%3F-lightgrey.svg
[armv7-shield]:   https://img.shields.io/badge/armv7-%3F-lightgrey.svg
[i386-shield]:    https://img.shields.io/badge/i386-%3F-lightgrey.svg

---

## His README:

---

### Dynamic DNS client for netcup DNS API
_This project is not affiliated with the company netcup GmbH. Although it is developed by an employee, it is not an official client by netcup GmbH and was developed in my free time._
_netcup is a registered trademark of netcup GmbH, Karlsruhe, Germany._

**A simple dynamic DNS client written in PHP for use with the netcup DNS API.**

#### Requirements
* Be a netcup customer: https://www.netcup.de – or for international customers: https://www.netcup.eu
  * You don't have to be a domain reseller to use the necessary functions for this client – every customer with a domain may use it.
* netcup API key and API password, which can be created within your CCP at https://ccp.netcup.net
* A domain :wink:

#### Features
##### Implemented
* All necessary API functions for DNS actions implemented (REST API)
* Determines correct public IP address, uses fallback API for determining the IP address, in case main API does return invalid / no IP
* IPv6 Support
* Updating of a specific subdomain, domain root, or subdomain
* Creation of DNS record, if it doesn't already exist
* If configured, lowers TTL to 300 seconds for the domain on each run, if necessary
* Hiding output (quiet option)

##### Missing
* Support for domain root and wildcard / specific subdomains at the same time
* Caching the IP provided to netcup DNS, to avoid running into (currently not existing) rate limits in the DNS API
* Probably a lot more :grin: – to be continued...
