FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/sanukanimsath/ZUNAMIC-MD /root/ZUNAMIC-MD
WORKDIR /root/ZUNAMIC-MD/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
