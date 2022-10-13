FROM python:3.8
RUN pip3 install flask
RUN pip3 install requests
RUN pip3 install waitress
COPY . /news_app
WORKDIR /news_app
EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run"]

#ENTRYPOINT ["python"]

