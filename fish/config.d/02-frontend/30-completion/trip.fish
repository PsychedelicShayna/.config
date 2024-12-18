complete -c trip -s c -l config-file -d 'Config file' -r -F
complete -c trip -s m -l mode -d 'Output mode [default: tui]' -r -f -a "{tui	'Display interactive TUI',stream	'Display a continuous stream of tracing data',pretty	'Generate an pretty text table report for N cycles',markdown	'Generate a markdown text table report for N cycles',csv	'Generate a SCV report for N cycles',json	'Generate a JSON report for N cycles',silent	'Do not generate any tracing output for N cycles'}"
complete -c trip -s p -l protocol -d 'Tracing protocol [default: icmp]' -r -f -a "{icmp	'Internet Control Message Protocol',udp	'User Datagram Protocol',tcp	'Transmission Control Protocol'}"
complete -c trip -s P -l target-port -d 'The target port (TCP & UDP only) [default: 80]' -r
complete -c trip -s S -l source-port -d 'The source port (TCP & UDP only) [default: auto]' -r
complete -c trip -s A -l source-address -d 'The source IP address [default: auto]' -r
complete -c trip -s I -l interface -d 'The network interface [default: auto]' -r
complete -c trip -s i -l min-round-duration -d 'The minimum duration of every round [default: 1s]' -r
complete -c trip -s T -l max-round-duration -d 'The maximum duration of every round [default: 1s]' -r
complete -c trip -s g -l grace-duration -d 'The period of time to wait for additional ICMP responses after the target has responded [default: 100ms]' -r
complete -c trip -l initial-sequence -d 'The initial sequence number [default: 33000]' -r
complete -c trip -s R -l multipath-strategy -d 'The Equal-cost Multi-Path routing strategy (IPv4/UDP only) [default: classic]' -r -f -a "{classic	'The src or dest port is used to store the sequence number',paris	'The UDP `checksum` field is used to store the sequence number',dublin	'The IP `identifier` field is used to store the sequence number'}"
complete -c trip -s U -l max-inflight -d 'The maximum number of in-flight ICMP echo requests [default: 24]' -r
complete -c trip -s f -l first-ttl -d 'The TTL to start from [default: 1]' -r
complete -c trip -s t -l max-ttl -d 'The maximum number of TTL hops [default: 64]' -r
complete -c trip -l packet-size -d 'The size of IP packet to send (IP header + ICMP header + payload) [default: 84]' -r
complete -c trip -l payload-pattern -d 'The repeating pattern in the payload of the ICMP packet [default: 0]' -r
complete -c trip -s Q -l tos -d 'The TOS (i.e. DSCP+ECN) IP header value (TCP and UDP only) [default: 0]' -r
complete -c trip -l read-timeout -d 'The socket read timeout [default: 10ms]' -r
complete -c trip -s r -l dns-resolve-method -d 'How to perform DNS queries [default: system]' -r -f -a "{system	'Resolve using the OS resolver',resolv	'Resolve using the `/etc/resolv.conf` DNS configuration',google	'Resolve using the Google `8.8.8.8` DNS service',cloudflare	'Resolve using the Cloudflare `1.1.1.1` DNS service'}"
complete -c trip -l dns-timeout -d 'The maximum time to wait to perform DNS queries [default: 5s]' -r
complete -c trip -s z -l dns-lookup-as-info -d 'Lookup autonomous system (AS) information during DNS queries [default: false]' -r -f -a "{true	'',false	''}"
complete -c trip -s a -l tui-address-mode -d 'How to render addresses [default: host]' -r -f -a "{ip	'Show IP address only',host	'Show reverse-lookup DNS hostname only',both	'Show both IP address and reverse-lookup DNS hostname'}"
complete -c trip -l tui-as-mode -d 'How to render AS information [default: asn]' -r -f -a "{asn	'Show the ASN',prefix	'Display the AS prefix',country-code	'Display the country code',registry	'Display the registry name',allocated	'Display the allocated date',name	'Display the AS name'}"
complete -c trip -l tui-geoip-mode -d 'How to render GeoIp information [default: short]' -r -f -a "{off	'Do not display GeoIp data',short	'Show short format',long	'Show long format',location	'Show latitude and Longitude format'}"
complete -c trip -s M -l tui-max-addrs -d 'The maximum number of addresses to show per hop [default: auto]' -r
complete -c trip -s s -l tui-max-samples -d 'The maximum number of samples to record per hop [default: 256]' -r
complete -c trip -l tui-preserve-screen -d 'Preserve the screen on exit [default: false]' -r -f -a "{true	'',false	''}"
complete -c trip -l tui-refresh-rate -d 'The Tui refresh rate [default: 100ms]' -r
complete -c trip -l tui-theme-colors -d 'The TUI theme colors [item=color,item=color,..]' -r
complete -c trip -l tui-key-bindings -d 'The TUI key bindings [command=key,command=key,..]' -r
complete -c trip -s C -l report-cycles -d 'The number of report cycles to run [default: 10]' -r
complete -c trip -s G -l geoip-mmdb-file -d 'The MaxMind City GeoLite2 mmdb file' -r -F
complete -c trip -l generate -d 'Generate shell completion' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c trip -l log-format -d 'The debug log format [default: pretty]' -r -f -a "{compact	'Display log data in a compact format',pretty	'Display log data in a pretty format',json	'Display log data in a json format',chrome	'Display log data in Chrome trace format'}"
complete -c trip -l log-filter -d 'The debug log filter [default: trippy=debug]' -r
complete -c trip -l log-span-events -d 'The debug log format [default: off]' -r -f -a "{off	'Do not display event spans',active	'Display enter and exit event spans',full	'Display all event spans'}"
complete -c trip -l udp -d 'Trace using the UDP protocol'
complete -c trip -l tcp -d 'Trace using the TCP protocol'
complete -c trip -s 4 -l ipv4 -d 'use IPv4 only'
complete -c trip -s 6 -l ipv6 -d 'Use IPv6 only'
complete -c trip -l print-tui-theme-items -d 'Print all TUI theme items and exit'
complete -c trip -l print-tui-binding-commands -d 'Print all TUI commands that can be bound and exit'
complete -c trip -s v -l verbose -d 'Enable verbose debug logging'
complete -c trip -s h -l help -d 'Print help (see more with \'--help\')'
complete -c trip -s V -l version -d 'Print version'
