FROM "nginx:mainline"

COPY "types.conf" "/etc/nginx/conf.d/types.conf"
RUN rm -rf "/usr/share/nginx/html/index.html"
COPY "proxy.pac" "/usr/share/nginx/html/wpad.dat"
