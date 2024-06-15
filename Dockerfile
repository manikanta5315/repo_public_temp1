FROM ubuntu:latest  

RUN apt-get update && apt-get install -y apache2 apache2-utils 
RUN apt-get clean  

EXPOSE 81

WORKDIR /var/www/html  

CMD ["apache2", "-D", 'daemon off;'] 
  
