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


@app.route('/admin')
def admin():
    return template('template/admin.tpl')

@app.route('/unlog')
def unlog():
    response.set_cookie("logged", "no", secret='azertyuiop789456123')
    redirect('/')

@app.route('/checkin', method='POST')
def check():
    username = request.forms.get('id')
    password = request.forms.get('password')

# Hard coded for test purposes, lately, this will be checked from a database
    if (username=="biche" and password=="iut2015biche"):
        response.set_cookie("logged", "yes", secret='azertyuiop789456123')
        redirect("/adminPanel")
    else:
        abort(401, "Sorry, access denied.")


@app.route('/adminPanel')
def panel():
    logged = request.get_cookie("logged", secret='azertyuiop789456123')
    if logged=='yes':
        return template('template/panel.tpl')
    else:
        abort(401, "Sorry, access denied.")

run(app, host='localhost', port=8080, debug='true')
