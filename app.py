from flask import Flask
from flask import render_template
import os
app = Flask()
@app.route("/")
def helloworld():
  os.environ["DYNAMIC_CONTENT"]="This is a sample which we will change later"
  d_content = os.environ.get('DYNAMIC_CONTENT')
  content = render_template("hellopage.html", message = d_content)
  return content
