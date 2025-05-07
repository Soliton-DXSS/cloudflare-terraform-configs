terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"  # ← ここが必須！
      version = "~> 4.0"                 # 任意でバージョン固定も可
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
