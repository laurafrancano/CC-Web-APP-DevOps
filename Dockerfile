FROM  httpd 
COPY index.html /var/www/html/  
EXPOSE 84

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] 