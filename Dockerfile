FROM  httpd 
COPY index.html /var/www/html/  
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] 