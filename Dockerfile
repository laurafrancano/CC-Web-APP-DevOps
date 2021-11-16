FROM centos:7 # centos est un os qui est le support pour faire tourner
#qui est sur le docker hub

RUN yum update -y #middle ware
RUN yum install httpd -y # apache (hhtpd qui lui permet de lire la web app)
RUN yum clean all

COPY index.html /var/www/html/  # endroit de lecture de httpd
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] # httpd va de lui meme chercher 'index.html' donc pas besoin de run le index.html 