# wechat Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- wechat account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/wechat/config.yaml`
3. Login to wechat
4. Restart bridge: `docker-compose restart wechat-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs wechat-bridge`
- Restart bridge: `docker-compose restart wechat-bridge`
- Reset config: `rm bridges/wechat/config.yaml && ./scripts/enable-all-bridges.sh`
