# -*- coding: utf-8 -*-
from flask import Flask

import {{ blueprint }}

app = Flask(__name__, static_folder='static')
app.register_blueprint(
    {{ blueprint }}.bp,
    url_prefix='{{ base_path }}')

if __name__ == '__main__':
    app.run(debug=True)
