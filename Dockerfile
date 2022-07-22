FROM python:3.8
RUN pip3 install flask
RUN pip3 install requests
COPY . /news_app
WORKDIR /news_app

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

