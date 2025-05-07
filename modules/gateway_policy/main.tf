resource "cloudflare_zero_trust_gateway_policy" "imported_6ae85a2d-e078-4f99-a5c4-efb65affc19b" {

  account_id  = var.cloudflare_account_id
  name        = "Domain_Allow-DNS_Policy"
  description = ""
  precedence  = 1153
  enabled     = true
  action      = "allow"
  filters     = ["dns"]
  traffic     = "any(dns.domains[*] in {\"www.zscaler.com\"})"
  identity    = ""
}

resource "cloudflare_zero_trust_gateway_policy" "imported_df95bc68-0c2f-4f71-a505-50cbfccc74ca" {

  account_id  = var.cloudflare_account_id
  name        = "Categories_Block-DNS_Policy"
  description = ""
  precedence  = 2306
  enabled     = true
  action      = "block"
  filters     = ["dns"]
  traffic     = "any(dns.content_category[*] in {2 67 125 133 182 99 33 179 166 17 85 87 102 157 135 138 180 162 165 161 124 15 115 119 141})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_bf8b6a5a-0a05-4230-84fa-d0922fead52a" {

  account_id  = var.cloudflare_account_id
  name        = "Security_Block-DNS_Policy"
  description = ""
  precedence  = 3460
  enabled     = true
  action      = "block"
  filters     = ["dns"]
  traffic     = "any(dns.content_category[*] in {32 169 177 128}) or any(dns.security_category[*] in {68 178 80 83 176 175 117 131 134 151 153})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_4963f617-7d49-4733-b17f-5194cc91d649" {

  account_id  = var.cloudflare_account_id
  name        = "Not Inspect Rule"
  description = "To avoid TLS inspection by Cloudflare"
  precedence  = 3611
  enabled     = true
  action      = "off"
  filters     = ["http"]
  traffic     = "any(http.conn.domains[*] == \"ids-dev-s.solitonsys.jp\") or any(http.conn.domains[*] == \"ids-dev.solitonsys.jp\") or any(http.conn.domains[*] == \"soliton.cftenant.com\") or any(http.conn.domains[*] == \"ids-s.soliton-ods.jp\") or any(http.conn.domains[*] == \"app.slack.com\") or (any(app.ids[*] in {1245}) or any(app.type.ids[*] in {16})) or any(http.conn.dst_ip[*] == 172.16.0.200)"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_91e8ef06-7f60-4c24-805f-33dec0d86f41" {

  account_id  = var.cloudflare_account_id
  name        = "Fujita_Domain_Allow-DNS_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 4611
  enabled     = false
  action      = "allow"
  filters     = ["dns"]
  traffic     = "any(dns.domains[*] in {\"akamaihd.net\" \"autodiscover.fjt2.onmicrosoft.com\" \"broadcenter.jp\" \"cdn.office.net\" \"click.status.xbox.com\" \"config.messenger.msn.com\" \"daiwahouse.co.jp\" \"diamond.sflag.co.jp\" \"facebook.com\" \"fbcdn.net\" \"fjt2.mail.onmicrosoft.com\" \"fujita.co.jp\" \"game.watch.impress.co.jp\" \"googlevideo.com\" \"glpjreit.com\" \"home.office.com\" \"itunes.apple.com\" \"jpx.co.jp\" \"kentem.jp\" \"kurosu.info\" \"lve.jp\" \"microsoft.com\" \"mmt-tv.co.jp\" \"mp.weixin.qq.com\" \"nakano.seikatsusha.me\" \"nomura.co.jp\" \"office.com\" \"office365.com\" \"onmicrosoft.com\" \"opsv1.a-road.info\" \"outlook.com\" \"portal.office.com\" \"rr.office.microsoft.com\" \"united-reit.co.jp\" \"urbanreallife.blog52.fc2.com\" \"videog.jp\" \"windows.net\" \"www.adbayes.com\" \"www.edgrid.jp\" \"www.fukushima-pref.stream.jfit.co.jp\" \"www.jhrth.co.jp\" \"www.kenzaiya.com\" \"www.kukkanen.tokyo\" \"www.materialworld.jp\" \"www.mercerjapanis.jp\" \"www.reitdb.com\" \"yahoo.co.jp\" \"youtu.be\" \"youtube.com\"})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_6d6d1abb-8726-433c-9284-39fce7586862" {

  account_id  = var.cloudflare_account_id
  name        = "Fujita_Domain_Block-DNS_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 5611
  enabled     = false
  action      = "block"
  filters     = ["dns"]
  traffic     = "any(dns.domains[*] in {\"legendworld.jp\" \"2ch.net\" \"www.heiwajima.gr.jp\" \"www.gamagori-kyotei.com\" \"qhit.net\"})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_30b0bd6b-081c-474c-8688-43a722e0e61a" {

  account_id  = var.cloudflare_account_id
  name        = "Fujita_Categories_Block-DNS_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 6611
  enabled     = false
  action      = "block"
  filters     = ["dns"]
  traffic     = "any(dns.content_category[*] in {2 67 125 133 70 74 76 79 92 96 100 106 107 116 120 121 127 139 156 164 73 82 24 181 71 72 173 78 84 86 94 97 104 105 114 174 93 130 132 136 147 149 154 158 140 148}) and not(any(dns.resolved_ips[*] in {59.84.158.137 64.4.0.0/18 157.60.0.0/16 157.56.0.0/14 157.54.0.0/15 183.182.200.229 183.182.200.230 125.206.231.219}))"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_b6927d0a-139f-406c-9c30-7c301880ee67" {

  account_id  = var.cloudflare_account_id
  name        = "Fujita_Security_Block-DNS_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 7611
  enabled     = false
  action      = "block"
  filters     = ["dns"]
  traffic     = "(any(dns.security_category[*] in {68 178 80 83 176 175 117 131 134 151 153}) and not(any(dns.resolved_ips[*] in {59.84.158.137 64.4.0.0/18 157.60.0.0/16 157.56.0.0/14 157.54.0.0/15 183.182.200.229 183.182.200.230 125.206.231.219}))) or (any(dns.content_category[*] in {32 169 177 128}) and not(any(dns.resolved_ips[*] in {59.84.158.137 64.4.0.0/18 157.60.0.0/16 157.56.0.0/14 157.54.0.0/15 183.182.200.229 183.182.200.230 125.206.231.219})))"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_b2c3802d-5490-4ee5-b9c2-d894a7481ac2" {

  account_id  = var.cloudflare_account_id
  name        = "Domain_Allow-HTTP_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 8611
  enabled     = false
  action      = "allow"
  filters     = ["http"]
  traffic     = "any(http.request.domains[*] in {\"akamaihd.net\" \"autodiscover.fjt2.onmicrosoft.com\" \"broadcenter.jp\" \"cdn.office.net\" \"click.status.xbox.com\" \"config.messenger.msn.com\" \"daiwahouse.co.jp\" \"diamond.sflag.co.jp\" \"facebook.com\" \"fbcdn.net\" \"fjt2.mail.onmicrosoft.com\" \"fujita.co.jp\" \"game.watch.impress.co.jp\" \"googlevideo.com\" \"glpjreit.com\" \"home.office.com\" \"itunes.apple.com\" \"jpx.co.jp\" \"kentem.jp\" \"kurosu.info\" \"lve.jp\" \"microsoft.com\" \"mmt-tv.co.jp\" \"mp.weixin.qq.com\" \"nakano.seikatsusha.me\" \"nomura.co.jp\" \"office.com\" \"office365.com\" \"onmicrosoft.com\" \"opsv1.a-road.info\" \"outlook.com\" \"portal.office.com\" \"rr.office.microsoft.com\" \"united-reit.co.jp\" \"urbanreallife.blog52.fc2.com\" \"videog.jp\" \"windows.net\" \"www.adbayes.com\" \"www.edgrid.jp\" \"www.fukushima-pref.stream.jfit.co.jp\" \"www.jhrth.co.jp\" \"www.kenzaiya.com\" \"www.kukkanen.tokyo\" \"www.materialworld.jp\" \"www.mercerjapanis.jp\" \"www.reitdb.com\" \"yahoo.co.jp\" \"youtu.be\" \"youtube.com\"})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_fcc25610-ce53-4f38-b706-b7b7c74365cc" {

  account_id  = var.cloudflare_account_id
  name        = "Domain_Block-HTTP_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 9611
  enabled     = false
  action      = "block"
  filters     = ["http"]
  traffic     = "any(http.request.domains[*] in {\"legendworld.jp\" \"2ch.net\" \"www.heiwajima.gr.jp\" \"www.gamagori-kyotei.com\" \"qhit.net\" \"www.yahoo.co.jp\"})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_f13555f2-2c9c-4d3a-8984-a49c7b079e85" {

  account_id  = var.cloudflare_account_id
  name        = "Categories_Block-HTTP_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 10611
  enabled     = false
  action      = "block"
  filters     = ["http"]
  traffic     = "any(http.request.uri.content_category[*] in {2 67 125 133 70 74 76 79 92 96 100 106 107 116 120 121 127 139 156 164 73 82 148 24 181 71 72 173 78 84 86 94 97 104 105 114 174 93 130 132 136 147 149 154 158 140})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_155ac2bd-6ccb-4736-b8c0-f759ab93d632" {

  account_id  = var.cloudflare_account_id
  name        = "Security_Block-HTTP_Policy"
  description = "ゼネコンサンプル環境検証用"
  precedence  = 11611
  enabled     = false
  action      = "block"
  filters     = ["http"]
  traffic     = "any(http.request.uri.security_category[*] in {68 178 80 83 176 175 117 131 134 151 153}) or any(http.request.uri.content_category[*] in {32 169 177 128})"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_030769f3-6271-4c34-8b5a-4566a87c4003" {

  account_id  = var.cloudflare_account_id
  name        = "Allow rule for hmasuda-Cloudflared-9.5"
  description = ""
  precedence  = 13611
  enabled     = true
  action      = "allow"
  filters     = ["l4"]
  traffic     = "(net.dst.ip in {172.31.255.254} and net.dst.port in {22 137 138 139 445 3389} and net.protocol in {\"tcp\" \"udp\"}) or (net.dst.ip in {172.31.254.0/24 172.31.255.0/24} and net.dst.port in {22} and net.protocol in {\"tcp\" \"udp\"})"
  identity    = "identity.email in {\"hiroki.masuda@soliton.co.jp\"}"
}


resource "cloudflare_zero_trust_gateway_policy" "imported_dbfd4868-aad6-4ba8-b998-e8e74884bb46" {

  account_id  = var.cloudflare_account_id
  name        = "Block rule for hmasuda-Cloudflared-9.5"
  description = ""
  precedence  = 14611
  enabled     = true
  action      = "block"
  filters     = ["l4"]
  traffic     = "net.dst.ip in {172.31.255.0/24 172.31.254.0/24}"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_a58fe528-d52d-4eb8-b2a7-4c364bcc4ba3" {

  account_id  = var.cloudflare_account_id
  name        = "Allow rule for Active Directory"
  description = ""
  precedence  = 16611
  enabled     = false
  action      = "allow"
  filters     = ["l4"]
  traffic     = "net.dst.ip == 10.15.210.200"
  identity    = ""
}


resource "cloudflare_zero_trust_gateway_policy" "imported_7f185a12-6a1f-4c53-8719-4927fb79fa36" {

  account_id  = var.cloudflare_account_id
  name        = "Block rule for Active Directory"
  description = ""
  precedence  = 17611
  enabled     = false
  action      = "block"
  filters     = ["l4"]
  traffic     = "(net.dst.ip == 10.15.210.200 and net.dst.port == 88 and net.protocol == \"tcp\") or (net.dst.ip == 10.7.1.14 and net.dst.port == 53 and net.protocol == \"udp\") or (net.dst.ip == 10.7.1.13 and net.dst.port == 53 and net.protocol == \"udp\")"
  identity    = ""
}