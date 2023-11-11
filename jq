[custom]
;CNIP加强版，无分流群组
ruleset=🚀 节点选择,[]DOMAIN-SUFFIX,xn--ngstr-lra8j.com
ruleset=🚀 节点选择,[]DOMAIN-SUFFIX,services.googleapis.cn
ruleset=🚀 节点选择,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/GoogleCNProxyIP.list
ruleset=🈲 IP归属地,clash-classic:https://raw.githubusercontent.com/lwd-temp/anti-ip-attribution/main/generated/rule-provider.yaml
;ruleset=DIRECT,https://raw.githubusercontent.com/cutethotw/ClashRule/main/Rule/Inside.list
ruleset=DIRECT,clash-classic:https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Lan/Lan.yaml
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaMedia.list
ruleset=REJECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
ruleset=REJECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
;ruleset=REJECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyList.list
;ruleset=REJECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyListChina.list
;ruleset=REJECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyPrivacy.list
ruleset=REJECT,clash-classic:https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ZhihuAds/ZhihuAds.yaml
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaIp.list
ruleset=DIRECT,https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Download.list
ruleset=DIRECT,[]GEOIP,CN,no-resolve
ruleset=🚀 节点选择,[]FINAL

custom_proxy_group=🚀 节点选择`select`[]♻️ 自动选择`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]⚖️ 日本_负载均衡`[]⚖️ 韩国_负载均衡`[]🔯 日本_故障转移`[]🔯 韩国_故障转移`[]DIRECT`.*
custom_proxy_group=♻️ 自动选择`url-test`.*`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🈲 IP归属地`select`[]🇯🇵 日本节点`[]🇰🇷 韩国节点`[]⚖️ 日本_负载均衡`[]⚖️ 韩国_负载均衡`[]DIRECT`.*
custom_proxy_group=🇯🇵 日本节点`url-test`(日本|川日|东京|大阪|泉日|埼玉|沪日|深日|[^-]日|JP|Japan)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group=🇰🇷 韩国节点`url-test`(KR|Korea|KOR|首尔|韩|韓)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group= ⚖️ 日本_负载均衡`load-balance`(日本|川日|东京|大阪|泉日|埼玉|沪日|深日|[^-]日|JP|Japan)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group= ⚖️ 韩国_负载均衡`load-balance`(KR|Korea|KOR|首尔|韩|韓)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group= 🔯 日本_故障转移`fallback`(日本|川日|东京|大阪|泉日|埼玉|沪日|深日|[^-]日|JP|Japan)`http://www.gstatic.com/generate_204`300,,50
custom_proxy_group= 🔯 韩国_故障转移`fallback`(KR|Korea|KOR|首尔|韩|韓)`http://www.gstatic.com/generate_204`300,,50

enable_rule_generator=true
overwrite_original_rules=true