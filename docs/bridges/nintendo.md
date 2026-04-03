# nintendo Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- nintendo account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/nintendo/config.yaml`
3. Login to nintendo
4. Restart bridge: `docker-compose restart nintendo-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs nintendo-bridge`
- Restart bridge: `docker-compose restart nintendo-bridge`
- Reset config: `rm bridges/nintendo/config.yaml && ./scripts/enable-all-bridges.sh`
