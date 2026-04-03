# feishu Bridge Setup

## Prerequisites
- SIN-Chatroom deployed
- Cloudflare Tunnel configured
- feishu account credentials

## Setup Steps
1. Run `./scripts/enable-all-bridges.sh`
2. Configure bridge in `bridges/feishu/config.yaml`
3. Login to feishu
4. Restart bridge: `docker-compose restart feishu-bridge`
5. Test connection in Element

## Troubleshooting
- Check logs: `docker-compose logs feishu-bridge`
- Restart bridge: `docker-compose restart feishu-bridge`
- Reset config: `rm bridges/feishu/config.yaml && ./scripts/enable-all-bridges.sh`
