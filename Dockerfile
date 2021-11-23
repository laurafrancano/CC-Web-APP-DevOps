FROM  httpd 
COPY index.html /var/www/html/  # endroit de lecture de httpd
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] # httpd va de lui meme chercher 'index.html' donc pas besoin de run le index.html 