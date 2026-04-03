# nostr Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- nostr account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/nostr/config.yaml`
3. Login to nostr
4. Restart bridge: `docker-compose restart nostr-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs nostr-bridge`
- Restart bridge: `docker-compose restart nostr-bridge`
- Reset config: `rm bridges/nostr/config.yaml && ./scripts/enable-all-bridges.sh`
