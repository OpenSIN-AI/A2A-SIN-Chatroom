# sms Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- sms account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/sms/config.yaml`
3. Login to sms
4. Restart bridge: `docker-compose restart sms-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs sms-bridge`
- Restart bridge: `docker-compose restart sms-bridge`
- Reset config: `rm bridges/sms/config.yaml && ./scripts/enable-all-bridges.sh`
