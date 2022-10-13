from distutils.log import debug
from flask import Flask , render_template
import requests
from waitress import serve

app = Flask(__name__)

@app.route("/")
def index():
    url = "https://newsapi.org/v2/top-headlines?country=in&apiKey=63ba653f42c74e929ea1a548ad15895b"
    r = requests.get(url).json()
    
    cases = {
        'articles' : r['articles']
    }
    return render_template("index.html", case=cases)
if __name__ == "__main__":
    #app.run(debug=True,host='34.228.16.121', port=5000)
    serve(app, host='34.228.16.121', port=5000)






