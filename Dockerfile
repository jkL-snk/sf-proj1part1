FROM httpd

WORKDIR /usr/local/apache2/htdocs

RUN apt update
RUN apt-get install -y wget
#RUN apt-get install -y cron
RUN rm index.html
RUN wget -O index.html https://www.chiark.greenend.org.uk/~sgtatham/bugs.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-br.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-cn.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-cz.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-da.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-de.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-es.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-fr.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-hu.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-it.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-jp.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-pl.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-tw.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs-nl.html
RUN wget https://www.chiark.greenend.org.uk/~sgtatham/bugs.html

#COPY url.txt /usr/local/apache2/htdocs 
#COPY sync.sh /usr/local/apache2/htdocs
#RUN chmod +x sync.sh

#RUN crontab -l | { cat; echo "45 3 * * 6 /usr/local/apache2/htdocs/sync.sh"; } | crontab -

ExPOSE 80

CMD /usr/local/bin/httpd-foreground
