git clone -b master https://github.com/pymumu/smartdns.git
echo '
config smartdns
    option server_name 'smartdns'
    option port '6053'
    option ipv6_server '0'
    option dualstack_ip_selection '0'
    option prefetch_domain '1'
    option serve_expired '0'
    option redirect 'none'
    option rr_ttl_min '300'
    option seconddns_port '7053'
    option seconddns_no_rule_addr '0'
    option seconddns_no_rule_nameserver '0'
    option seconddns_no_rule_ipset '0'
    option seconddns_no_rule_soa '0'
    option coredump '0'
    option enabled '1'
    option seconddns_enabled '1'
    option seconddns_no_dualstack_selection '1'
    option force_aaaa_soa '1'
    option cache_size '512'
    option seconddns_server_group 'foreign'
    option tcp_server '1'
    option seconddns_tcp_server '1'
    option seconddns_no_cache '1'
    option seconddns_no_speed_check '1'

config server
    option type 'udp'
    option ip '8.8.8.8'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option type 'udp'
    option ip '8.8.4.4'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option type 'udp'
    option ip '1.1.1.1'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option ip '1.0.0.1'
    option type 'udp'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option type 'udp'
    option ip '4.2.2.1'
    option enabled '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option type 'udp'
    option ip '4.2.2.2'
    option enabled '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option type 'udp'
    option ip '119.29.29.29'
    option enabled '0'

config server
    option type 'udp'
    option ip '119.28.28.28'
    option enabled '0'

config server
    option type 'udp'
    option ip '223.5.5.5'
    option enabled '0'

config server
    option type 'udp'
    option enabled '0'
    option ip '223.6.6.6'

config server
    option ip '8.8.8.8'
    option type 'tcp'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option ip '8.8.4.4'
    option type 'tcp'
    option blacklist_ip '0'
    option server_group 'foreign'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option ip '1.1.1.1'
    option type 'tcp'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option ip '1.0.0.1'
    option type 'tcp'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '0'

config server
    option ip '4.2.2.1'
    option type 'tcp'
    option enabled '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option ip '4.2.2.2'
    option enabled '0'
    option type 'tcp'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option enabled '0'
    option ip '119.29.29.29'
    option type 'tcp'

config server
    option enabled '0'
    option ip '119.28.28.28'
    option type 'tcp'

config server
    option enabled '0'
    option ip '223.5.5.5'
    option type 'tcp'

config server
    option enabled '0'
    option ip '223.6.6.6'
    option type 'tcp'

config server
    option ip '8.8.8.8'
    option type 'tls'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '1'

config server
    option ip '8.8.4.4'
    option type 'tls'
    option enabled '0'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option ip '1.1.1.1'
    option type 'tls'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '1'

config server
    option ip '1.0.0.1'
    option type 'tls'
    option enabled '0'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'

config server
    option ip 'dns.pub'
    option type 'tls'
    option no_check_certificate '0'
    option enabled '1'

config server
    option enabled '0'
    option ip 'doh.pub'
    option type 'tls'
    option no_check_certificate '0'

config server
    option ip '223.5.5.5'
    option type 'tls'
    option no_check_certificate '0'
    option enabled '1'

config server
    option enabled '0'
    option ip '223.6.6.6'
    option type 'tls'
    option no_check_certificate '0'

config server
    option ip 'https://1.1.1.1/dns-query'
    option type 'https'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '1'

config server
    option ip 'https://8.8.8.8/dns-query'
    option type 'https'
    option no_check_certificate '0'
    option server_group 'foreign'
    option blacklist_ip '0'
    option addition_arg '-exclude-default-group'
    option enabled '1'

config server
    option ip 'https://doh.pub/dns-query'
    option type 'https'
    option no_check_certificate '0'
    option enabled '1'

config server
    option ip 'https://223.5.5.5/dns-query'
    option type 'https'
    option no_check_certificate '0'
    option enabled '1'
' > smartdns/package/openwrt/files/etc/config/smartdns
echo '

speed-check-mode tcp:443,ping
' >> smartdns/package/openwrt/custom.conf
git clone -b openwrt-18.06 https://github.com/project-openwrt/openwrt.git
cat smartdns/package/openwrt/files/etc/config/smartdns > openwrt/package/ntlf9t/smartdns/conf/smartdns.conf
cat smartdns/package/openwrt/custom.conf > openwrt/package/ntlf9t/smartdns/conf/custom.conf
mv openwrt/package/ntlf9t/luci-app-smartdns friendlywrt-rk3328/friendlywrt/package/luci-app-smartdns
mv openwrt/package/ntlf9t/smartdns friendlywrt-rk3328/friendlywrt/package