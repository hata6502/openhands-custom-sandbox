FROM docker.all-hands.dev/all-hands-ai/runtime:0.20-nikolaik

RUN apt-get update

# https://scrapbox.io/hata6502/Ubuntu_Desktopで採用されてるフォントをPuppeteerで使う
RUN apt-get install -y \
  fonts-arphic-ukai \
  fonts-arphic-uming \
  fonts-dejavu-core \
  fonts-droid-fallback \
  fonts-liberation \
  fonts-noto-cjk \
  fonts-noto-color-emoji \
  fonts-noto-core \
  fonts-noto-mono \
  fonts-opensymbol \
  fonts-urw-base35 && \
  apt-get purge -y fonts-wqy-zenhei
