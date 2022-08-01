# Bir Sunucuya Birden Fazla Aynı Portu Kullanan Node Kurmak 


# Port Değiştirme İçin Komutumuz

```
wget -O port.sh https://raw.githubusercontent.com/brsbrc/Port-Script/main/port.sh && chmod +x port.sh && ./port.sh
```

# config.toml dosyasında değişmesi gereken kısımlar;

```
proxy_app-36658

laddr- 36657 

pprof_laddr-7060

laddr-36656

prometheus_listen_addr-36660
```

# app.toml dosyasında değişmesi gereken kısımlar;

```
address-10090

address-10091
```

# client.toml dosyasında değişmesi gereken kısımlar;

```
node-36657
```
# Cosmos Projelerinde Port Numaraları

> 26656,26657,26658,26660,9090,6060



#İşlemler bu kadardı, kolay gelsin.
