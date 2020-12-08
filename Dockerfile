FROM python:3.7-buster
RUN mkdir /app
WORKDIR /app 
COPY ./ /app/
RUN pip install -r /app/requirements.txt
EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]