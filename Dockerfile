FROM httpd:alpine

COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY conf/extra/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY vhosts /usr/local/apache2/vhosts
COPY conf/auth /usr/local/apache2/auth

RUN echo 'alias ll="ls -FAlp"' >> ~/.bashrc