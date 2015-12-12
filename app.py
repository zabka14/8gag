from bottle import *

app = Bottle()

#Static files location import

@app.route('/template/<filepath:path>')
def file_stac(filepath):
    return static_file(filepath, root='./template')

@app.route('/css/<filepath:path>')
def file_stac2(filepath):
    return static_file(filepath, root='./public/css')

@app.route('/fonts/<filepath:path>')
def file_stac2(filepath):
    return static_file(filepath, root='./public/fonts')

@app.route('/js/<filepath:path>')
def file_stac2(filepath):
    return static_file(filepath, root='./public/js')

@app.route('/img/<filepath:path>')
def file_stac2(filepath):
    return static_file(filepath, root='./public/img')


@app.route('/index.html')
@app.route('/')
def hello():
    return template('template/index.tpl')



run(app, host='localhost', port=8080, debug='true')
