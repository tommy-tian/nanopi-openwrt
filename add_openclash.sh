git clone -b master https://github.com/vernesong/OpenClash.git
OPENCLASH_TUN_VERSION=$(sed -n '2p' OpenClash/core_version)
CPU_MODEL=armv8
echo '
config openclash 'config'
    option proxy_port '7892'
    option update '0'
    option auto_update '0'
    option auto_update_time '0'
    option cn_port '9090'
    option enable_redirect_dns '1'
    option dns_advanced_setting '0'
    option servers_if_update '0'
    option servers_update '0'
    option log_level 'silent'
    option lan_ac_mode '0'
    option config_path '/etc/openclash/config/config.yaml'
    option core_version 'linux-${CPU_MODEL}'
    option enable_rule_proxy '1'
    option intranet_allowed '1'
    option http_port '7890'
    option socks_port '7891'
    option enable_custom_dns '1'
    option disable_masq_cache '1'
    option enable_custom_clash_rules '1'
    option other_rule_auto_update '1'
    option other_rule_update_week_time '*'
    option other_rule_update_day_time '2'
    option geo_auto_update '1'
    option geo_update_week_time '*'
    option geo_update_day_time '3'
    option dns_port '7874'
    option create_config '1'
    option redirect_dns '1'
    option masq_cache '1'
    option operation_mode 'redir-host'
    option en_mode 'redir-host'
    option dns_revert '0'
    option proxy_mode 'rule'
    option dashboard_password 'openwrt'
    option rule_sources 'ConnersHua'
    option rule_source 'ConnersHua'
    option GlobalTV 'GlobalTV'
    option AsianTV 'AsianTV'
    option Proxy 'Proxy'
    option Domestic 'Domestic'
    option Others 'Others'
    option china_ip_route '1'
    option enable '1'
    option en_mode 'redir-host-mix'
    option stack_type 'system'
    option config_reload '1'
config dns_servers
    option group 'nameserver'
    option type 'udp'
    option enabled '0'
    option ip '114.114.114.114'
config dns_servers
    option group 'nameserver'
    option type 'udp'
    option ip '119.29.29.29'
    option enabled '0'
config dns_servers
    option ip '8.8.8.8'
    option port '853'
    option type 'tls'
    option enabled '0'
    option group 'fallback'
config dns_servers
    option ip '1.1.1.1/dns-query'
    option type 'https'
    option enabled '0'
    option group 'fallback'
config dns_servers
    option ip '1.1.1.1'
    option port '853'
    option type 'tls'
    option enabled '0'
    option group 'fallback'
config dns_servers
    option enabled '1'
    option group 'nameserver'
    option ip '127.0.0.1'
    option port '6053'
    option type 'tcp'
config dns_servers
    option enabled '1'
    option ip '127.0.0.1'
    option port '7053'
    option group 'fallback'
    option type 'tcp'
' > OpenClash/luci-app-openclash/files/etc/config/openclash
mv OpenClash/luci-app-openclash friendlywrt-rk3328/friendlywrt/package
cd friendlywrt-rk3328/friendlywrt/package/base-files/files
mkdir -p etc/openclash/core && cd etc/openclash/core
curl -L https://github.com/vernesong/OpenClash/releases/download/TUN/clash-linux-${CPU_MODEL}.tar.gz | tar zxf -
mv clash clash_game
chmod +x clash_game
curl -L https://github.com/vernesong/OpenClash/releases/download/Clash/clash-linux-${CPU_MODEL}.tar.gz | tar zxf -
chmod +x clash
curl -OL https://github.com/vernesong/OpenClash/releases/download/TUN-Premium/clash-linux-${CPU_MODEL}-${OPENCLASH_TUN_VERSION}.gz
gzip -d clash-linux-${CPU_MODEL}-${OPENCLASH_TUN_VERSION}.gz
mv clash-linux-${CPU_MODEL}-${OPENCLASH_TUN_VERSION} clash_tun
chmod +x clash_tun