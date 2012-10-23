" Vim syntax file
" Language: DHCPd configuration file dhcpd.conf
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-08-25
" URL: http://trific.ath.cx/Ftp/vim/syntax/dhcpd.vim

" Setup {{{
" React to possibly already-defined syntax.
" For version 5.x: Clear all syntax items unconditionally
" For version 6.x: Quit when a syntax file was already loaded
if version >= 600
  if exists("b:current_syntax")
    finish
  endif
else
  syntax clear
endif

if version >= 600
  setlocal iskeyword=_,-,.,a-z,A-Z,48-57
else
  set iskeyword=_,-,.,a-z,A-Z,48-57
endif

syn case ignore
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Comments {{{
syn match dhcpdComment "#.*$" contains=dhcpdTodo
syn case match
syn keyword dhcpdTodo TODO FIXME NOT XXX contained
syn case ignore
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Base constructs {{{
syn match dhcpdString +"[^"]*"+
syn match dhcpdDecNumber "\<-\?\d\+\(;\|\s\|$\)"
syn match dhcpdIPv4 "\<\(\d\{1,3}\.\)\{3}\d\{1,3}\(;\|\s\|$\)"
syn match dhcpdMAC "\<\(\x\x\?:\)\{5}\x\x\?\(;\|\s\|$\)"
syn match dhcpdDate "\<[0-6]\s\d\{4}/\d\d/\d\d/\s\d\d:\d\d:\d\d\(;\|\s\|$\)"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Keywords {{{
syn keyword dhcpdGroupDecl group shared-network subnet host pool failover
syn keyword dhcpdGroupDecl class subclass key zone logging channel netmask
syn keyword dhcpdParameter option
syn keyword dhcpdParameter code
syn keyword dhcpdParameter range dynamic-bootp
syn keyword dhcpdParameter always-broadcast always-reply-rfc1048
syn keyword dhcpdParameter authoritative boot-unknown-clients
syn keyword dhcpdParameter ddns-hostname ddns-domainname ddns-rev-domainname
syn keyword dhcpdParameter ddns-updates ddns-update-style default-lease-time
syn keyword dhcpdParameter dynamic-bootp-lease-cutoff fixed-address
syn keyword dhcpdParameter dynamic-bootp-lease-length filename
syn keyword dhcpdParameter get-lease-hostnames hardware lease-file-name
syn keyword dhcpdParameter local-port log-facility max-lease-time
syn keyword dhcpdParameter min-lease-time min-secs next-server omapi-port
syn keyword dhcpdParameter one-lease-per-client pid-file-name ping-check
syn keyword dhcpdParameter server-identifier server-name site-option-space
syn keyword dhcpdParameter stash-agent-options update-optimization
syn keyword dhcpdParameter update-static-leases use-host-decl-names
syn keyword dhcpdParameter use-lease-addr-for-default-route
syn keyword dhcpdParameter vendor-option-space
syn match dhcpdParameter "\<load balance max seconds\>"
syn match dhcpdParameter "\<lease limit\>"
syn match dhcpdParameter "\<spawn with\>"
syn match dhcpdParameter "\<members of\>"
syn match dhcpdParameter "\<dynamic bootp clients\>"
syn match dhcpdParameter "\<\(un\)\?authenticated clients\>"
syn match dhcpdParameter "\<all clients\>"
syn match dhcpdParameter "\<not authoritative\>"
syn keyword dhcpdAllowDeny allow deny ignore
syn keyword dhcpdEval match if elsif else
syn keyword dhcpdOperator and or not exists known static hardware
syn keyword dhcpdOperator leased-address host-decl-name lease-time client-state
syn keyword dhcpdFunction substring suffix packet concat reverse
syn keyword dhcpdFunction binary-to-ascii encode-int pick-fist-value
syn keyword dhcpdFunction extract-int log
syn keyword dhcpdOption all-subnets-local arp-cache-timeout bootfile-name
syn keyword dhcpdOption boot-size broadcast-address cookie-servers
syn keyword dhcpdOption default-ip-ttl default-tcp-ttl dhcp-client-identifier
syn keyword dhcpdOption dhcp-lease-time dhcp-max-message-size dhcp-message
syn keyword dhcpdOption dhcp-message-type dhcp-option-overload
syn keyword dhcpdOption dhcp-parameter-request-list dhcp-rebinding-time
syn keyword dhcpdOption dhcp-renewal-time dhcp-requested-address
syn keyword dhcpdOption dhcp-server-identifier domain-name domain-name-servers
syn keyword dhcpdOption extensions-path finger-server font-servers host-name
syn keyword dhcpdOption ieee802-3-encapsulation ien116-name-servers
syn keyword dhcpdOption impress-servers interface-mtu irc-server log-servers
syn keyword dhcpdOption lpr-servers mask-supplier max-dgram-reassembly
syn keyword dhcpdOption merit-dump mobile-ip-home-agent nds-context nds-servers
syn keyword dhcpdOption nds-tree-name netbios-dd-server netbios-name-servers
syn keyword dhcpdOption netbios-node-type netbios-scope nis-domain
syn keyword dhcpdOption nis-servers nisplus-domain nisplus-servers nntp-server
syn keyword dhcpdOption non-local-source-routing ntp-servers nwip-domain
syn keyword dhcpdOption nwip-suboptions path-mtu-aging-timeout
syn keyword dhcpdOption path-mtu-plateau-table perform-mask-discovery
syn keyword dhcpdOption policy-filter pop-server resource-location-servers
syn keyword dhcpdOption root-path router-discovery router-solicitation-address
syn keyword dhcpdOption routers slp-directory-agent slp-service-scope
syn keyword dhcpdOption smtp-server static-routes
syn keyword dhcpdOption streettalk-directory-assistance-server
syn keyword dhcpdOption streettalk-server subnet-mask subnet-selection
syn keyword dhcpdOption swap-server tcp-keepalive-garbage
syn keyword dhcpdOption tcp-keepalive-interval tftp-server-name time-offset
syn keyword dhcpdOption time-servers trailer-encapsulation uap-servers
syn keyword dhcpdOption user-class vendor-class-identifier
syn keyword dhcpdOption vendor-encapsulated-options www-server
syn keyword dhcpdOption x-display-manager agent.circuit-id agent.remote-id
syn keyword dhcpdOption fqdn.no-client-update fqdn.server-update fqdn.encoded
syn keyword dhcpdOption fqdn.rcode1 fqdn.rcode2 fqdn.fqdn fqdn.hostname
syn keyword dhcpdOption fqdn.domainname nwip.nsq-broadcast nwip.preferred-dss
syn keyword dhcpdOption nwip.nearest-nwip-server nwip.autoretries
syn keyword dhcpdOption nwip.autoretry-secs nwip.nwip-1-1 nwip.primary-dss
syn keyword dhcpdType boolean signed unsigned integer ip-address text
syn keyword dhcpdType string encapsulate
syn match dhcpdType "\<array of\>"
syn keyword dhcpdConstant true false on off
syn keyword dhcpdConstant ad-hoc interim none
syn keyword dhcpdConstant unknown-clients bootp booting duplicates declines
syn keyword dhcpdConstant client-updates
syn keyword dhcpdConstant ethernet token-ring
syn keyword dhcpdConstant fatal error info debug
syn match dhcpdConstant "\<\(un\)\?known clients\>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
" Define the default highlighting {{{
" For version 5.7 and earlier: Only when not done already
" For version 5.8 and later: Only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_dhcpd_syntax_inits")
  if version < 508
    let did_pam_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink dhcpdComment           Comment
  HiLink dhcpdTodo              Todo
  HiLink dhcpdAllowDeny         Special
  HiLink dhcpdDate              dhcpdConstant
  HiLink dhcpdDecNumber         dhcpdConstant
  HiLink dhcpdIPv4              dhcpdConstant
  HiLink dhcpdMAC               dhcpdConstant
  HiLink dhcpdString            dhcpdConstant
  HiLink dhcpdConstant          Constant
  HiLink dhcpdEval              Preproc
  HiLink dhcpdFunction          Function
  HiLink dhcpdGroupDecl         Keyword
  HiLink dhcpdOperator          Type
  HiLink dhcpdOption            Type
  HiLink dhcpdParameter         Type
  HiLink dhcpdType              Type
  delcommand HiLink
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" }}}
let b:current_syntax = "dhcpd"

