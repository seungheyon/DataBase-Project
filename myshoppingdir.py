from flask import Flask, render_template, request, redirect, url_for
import sqlite3

app = Flask(__name__)



@app.route('/main')
def mainstream():
    
    return render_template('MainPage.html', items = None)



@app.route('/brand')
def showbrand(brand=None):
    db = sqlite3.connect('mydatabase.db')
    db.row_factory =  sqlite3.Row
    items = db.execute(
        'select bName, location, scale from brand'
    ).fetchall()

    db.close()    
    return render_template('Brandlist.html', items = items)

@app.route('/platform')
def showplatform(platform=None):
    db = sqlite3.connect('mydatabase.db')
    db.row_factory =  sqlite3.Row
    items = db.execute(
        'select pName, event, salesrank from salesplatform'
    ).fetchall()

    db.close()    
    return render_template('Platformlist.html', items = items)



@app.route('/goods', methods = ['GET', 'POST'])
def searchgoods(items=None):
   
    return render_template('searchgoods.html')


@app.route('/results/<string:argclass>/<string:argcolor>/', methods = ['GET', 'POST'])
def searchresults(argclass, argcolor):
    db = sqlite3.connect('mydatabase.db')
    db.row_factory =  sqlite3.Row
    items = db.execute(
        'select goodsID, class, color, launchingby, price'
        'from clothes'
        'where class=?' (argclass)
    ).fetchall()

    db.close() 
    return render_template('searchresults.html', items = items)    




@app.route('/brand/edit/<string:brandname>/', methods=['GET','POST'])
def editBrand(brandname):
    if request.method=='POST':
        db = sqlite3.connect("mydatabase.db")
        db.row_factory = sqlite3.Row
        db.execute(
            'update brand'
            ' set location=?'
            ' where bName=?',
            (request.form['location'],brandname)
        )
        db.commit()
        db.close()
        return redirect(url_for('showbrand'))
    else:
        db = sqlite3.connect("mydatabase.db")
        db.row_factory = sqlite3.Row
        item = db.execute(
            'select bName, location, scale from brand where bName=?',(brandname)
        ).fetchone()
        db.close()
        return render_template('editBrand.html', item=item)



if __name__ == '__main__':
    app.debug = True
    app.run(host='127.0.0.1', port=5000)
