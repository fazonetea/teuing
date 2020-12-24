FROM fusuf/whatsasena:publicbeta

RUN git clone https://github.com/fazonetea/WhatSgorokgok /root/WhatSgorokgok
RUN mkdir /root/WhatSgorokgok/bin/
WORKDIR /root/WhatSgorokgok/

ENV TZ=Europe/Istanbul
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies

CMD ["node", "bot.js"]
