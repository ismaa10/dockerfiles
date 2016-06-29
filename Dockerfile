FROM django
MAINTAINER ismaa10@gmail.com
ENV code_dir /finanzas_new
RUN apt-get update && apt-get install -y python-pip
RUN pip install uwsgi
CMD cd $code_dir && uwsgi --uwsgi-socket :8000 --module finanzas.wsgi
