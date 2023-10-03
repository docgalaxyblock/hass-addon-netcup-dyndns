# Home Assistant Add-on: Netcup DynDNS

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other Home Assistant add-on.

1. Click the Home Assistant My button below to open the add-on on your Home Assistant instance.

   [![Open this add-on in your Home Assistant instance.][addon-badge]][addon]

2. Click the "Add" button to install the repo.
3. Click the "Install" button to install the add-on.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```yaml
interval: 123
customer: 123456
api_key: 123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNO
api_pass: 123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNO
domainlist: "myfirstdomain.com: www, dns; myseconddomain.com: @, *, some-subdomain"
ipv4: true
ipv6: false
change_ttl: true
```

**Note**: _This is just an example, don't copy and paste it! Create your own!_

### Option: `interval`

The number of seconds to wait before updating.

### Option: `customer`

Enter your netcup customer number here.

### Option: `api_key` & `api_pass`

You can aquire them by:
 - Log into https://ccp.netcup.net
   - Click `Master Data` on the left
   - Click `API` on the upper right corner
 - OR by clicking [this link](https://ccp.netcup.net/daten_aendern.php?sprung=api)

### Option: `domainlist`

Define domains and subdomains which should be used for dynamic DNS in the following format:

`domain.tld: host1, host2, host3; domain2.tld: host1, host4, *, @`

Start with the domain (without subdomain), add `:` after the domain, then add as many subdomains as you want, seperated by `,`.

To add another domain, finish with `;`.

Whitespace (spaces and newlines) are ignored. If you have a very complicated configuration, you may want to use multiple lines. Feel free to do so!

If one of the subdomains does not exist, the script will create them for you.

Subdomain configuration: Use `@` for the domain without subdomain. Use `*` for wildcard: All subdomains (except ones already defined in DNS).

### Option: `ipv4`

If set to true, the script will check for your public IPv4 address too and add it as an A-Record / change an existing A-Record for the host.
Deactivate this only if you only have pure IPv6 connectivity, or you ***WILL*** get errors.

### Option: `ipv6`

If set to true, the script will check for your public IPv6 address too and add it as an AAAA-Record / change an existing AAAA-Record for the host.
Activate this only if you have IPv6 connectivity, or you ***WILL*** get errors.

### Option: `change_ttl`

If set to true, this will change TTL to 300 seconds on every run if necessary.

## Authors

The original setup of this repository is by [docgalaxyblock](https://github.com/docgalaxyblock).

This Addon is based on [this PHP script](https://github.com/stecklars/dynamic-dns-netcup-api) by [Lars-Sören Steck](https://github.com/stecklars).

[addon-badge]: https://my.home-assistant.io/badges/supervisor_addon.svg
[addon]: https://my.home-assistant.io/redirect/supervisor_addon/?repository_url=https%3A%2F%2Fgithub.com%2Fdocgalaxyblock%2Fhassio-addon-netcup-dyndns&addon=8f93f1a3_netcup-dyndns