# Steps

- 修改Caddyfile
  - 添加ali access_key/secret
  - 启动前将先ca设置成测试环境进行测试以免触发limits

```
domain.com {
    tls {
        ca "https://acme-staging-v02.api.letsencrypt.org/directory"
    }
}
```

- run

```bash
docker-compose up -d
```