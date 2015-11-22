<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="amd.20151121225042.1"><vh>@settings</vh>
<v t="amd.20151121225042.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="amd.20151121225042.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="amd.20151121234937.1"><vh>有關專案</vh>
<v t="amd.20151121234947.1"><vh>OpenShift 與 filezilla</vh></v>
<v t="amd.20151121235037.1"><vh>對應的 OpenShift</vh></v>
<v t="amd.20151122072557.1"><vh>flask socket.io.js 與 OpenShift</vh></v>
</v>
<v t="amd.20151122075148.1"><vh>建立資料庫指令</vh></v>
<v t="amd.20151122075205.1"><vh>@edit schema.sql</vh></v>
<v t="amd.20151122075220.1"><vh>@button create db</vh></v>
<v t="amd.20151121233734.1"><vh>@edit README.md</vh></v>
<v t="amd.20151121233918.1"><vh>@edit setup.py</vh></v>
<v t="amd.20151122065955.1"><vh>@edit wsgi.py</vh></v>
<v t="amd.20151122075104.1"><vh>@edit pybean.py</vh></v>
<v t="amd.20151121225024.2" a="E"><vh>@clean guess.py</vh>
<v t="amd.20151121225723.1"><vh>&lt;&lt; declarations &gt;&gt;</vh></v>
<v t="amd.20151121225321.1"><vh>index</vh></v>
<v t="amd.20151121225340.1"><vh>guessform</vh></v>
<v t="amd.20151121225334.1"><vh>docheck</vh></v>
</v>
<v t="amd.20151122075345.1" a="E"><vh>@clean gear.py</vh>
<v t="amd.20151122075345.2"><vh>&lt;&lt;declarations&gt;&gt; (application)</vh></v>
<v t="amd.20151122075345.3" a="E"><vh>class Gear</vh>
<v t="amd.20151122075345.4"><vh>__init__</vh></v>
<v t="amd.20151122075345.6"><vh>index</vh></v>
<v t="amd.20151122075345.7"><vh>interpolation</vh></v>
<v t="amd.20151122075345.8"><vh>gear_width</vh></v>
</v>
</v>
<v t="amd.20151121225346.1"><vh>@path templates</vh>
<v t="amd.20151121225407.1"><vh>@edit index.html</vh></v>
<v t="amd.20151121225415.1"><vh>@edit guessform.html</vh></v>
<v t="amd.20151121225445.1"><vh>@edit docheck.html</vh></v>
<v t="amd.20151121230507.1"><vh>@edit toobig.html</vh></v>
<v t="amd.20151121230514.1"><vh>@edit toosmall.html</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20151121225024.2">@language python
# 以下為宣告 ################################## (1)
&lt;&lt; declarations &gt;&gt;

# 以下為全域變數宣告 ############################# (2)
# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))

# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
    template_root_dir = os.environ['OPENSHIFT_REPO_DIR']+"/static"
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"
    template_root_dir = _curdir + "/static"

# 啟動 app
app = Flask(__name__)

# 使用 session 必須要設定 secret_key
app.secret_key = 'A0Zr9@8j/3yX R~XHH!jmN]LWX/,?R@T'

# 以下為相關各方法的定義 ########################### (3)
@others


</t>
<t tx="amd.20151121225042.1"></t>
<t tx="amd.20151121225042.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="amd.20151121225042.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="amd.20151121225321.1">@app.route("/")
def index():
    #這是猜數字遊戲的起始表單, 主要在產生答案, 並且將 count 歸零
    # 將標準答案存入 answer session 對應區
    theanswer = random.randint(1, 100)
    thecount = 0
    # 將答案與計算次數變數存進 session 對應變數
    session['answer'] = theanswer
    session['count'] = thecount

    return render_template("index.html", answer=theanswer, count=thecount)</t>
<t tx="amd.20151121225334.1">@app.route('/docheck', methods=['POST'])
def docheck():
    # session[] 存資料
    # session.get() 取 session 資料
    # 利用 request.form[] 取得表單欄位資料, 然後送到 template
    guess = request.form["guess"]
    session["guess"] = guess
    # 假如使用者直接執行 doCheck, 則設法轉回根方法
    if guess is None:
        redirect("/")
    # 從 session 取出 answer 對應資料, 且處理直接執行 docheck 時無法取 session 值情況
    try:
        theanswer = int(session.get('answer'))
    except:
        redirect("/")
    # 經由表單所取得的 guess 資料型別為 string
    try:
        theguess = int(guess)
    except:
        return redirect("/guessform")
    # 每執行 doCheck 一次,次數增量一次
    session["count"] += 1
    count = session.get("count")
    # 答案與所猜數字進行比對
    if theanswer &lt; theguess:
        return render_template("toobig.html", guess=guess, answer=theanswer, count=count)
    elif theanswer &gt; theguess:
        return render_template("toosmall.html", guess=guess, answer=theanswer, count=count)
    else:
        # 已經猜對, 從 session 取出累計猜測次數
        thecount = session.get('count')
        return "猜了 "+str(thecount)+" 次, 終於猜對了, 正確答案為 "+str(theanswer)+": &lt;a href='/'&gt;再猜&lt;/a&gt;"
    # 應該不會執行下列一行
    return render_template("docheck.html", guess=guess)</t>
<t tx="amd.20151121225340.1">@app.route('/guessform')
def guessform():
    session["count"] += 1
    guess = session.get("guess")
    theanswer = session.get("answer")
    count = session.get("count")
    
    return render_template("guessform.html", guess=guess, answer=theanswer, count=count)</t>
<t tx="amd.20151121225346.1"></t>
<t tx="amd.20151121225723.1"># 導入 os 模組, 主要用來判斷是否在 OpenShift 上執行
import os
from flask import Flask, request, redirect, render_template, session
import random
</t>
<t tx="amd.20151121234937.1"></t>
<t tx="amd.20151121234947.1">ssh-add ~/.ssh/id_rsa</t>
<t tx="amd.20151121235037.1">ssh://56508f8689f5cf0897000188@cptocadp-2015fallhw.rhcloud.com/~/git/cptocadp.git/</t>
<t tx="amd.20151122072557.1">http://vene.ro/blog/flask-socketio-openshift-fallback-xhr-polling.html</t>
<t tx="amd.20151122075148.1">sqlite3 local_data/db/database.db &lt; schema.sql</t>
<t tx="amd.20151122075220.1">@language python
'''
local_data/db/database.db
'''
import os

os.system("sqlite3 local_data/db/database.db &lt; schema.sql")
# echo string
'''
for Leo Editor:
c is the commander of the outline containing the script.
g is Leo’s leo.core.leoGlobals module.
p is the presently selected position, the same as c.p.
'''
g.es("database.db created")</t>
<t tx="amd.20151122075345.1">@language python
@tabwidth -4
&lt;&lt;declarations&gt;&gt;
@others


</t>
<t tx="amd.20151122075345.2">@language python

from flask import Flask, request, redirect, render_template, session
import os
import sys
# 這個程式要計算正齒輪的齒面寬, 資料庫連結希望使用 pybean 與 SQLite
# 導入 pybean 模組與所要使用的 Store 及 SQLiteWriter 方法
from pybean import Store, SQLiteWriter
import math

# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 將所在目錄設為系統搜尋目錄
sys.path.append(_curdir)
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # while program is executed in OpenShift
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # while program is executed in localhost
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"

# 這是 Gear 設計資料表的定義
'''

lewis.db 中有兩個資料表, steel 與 lewis

 CREATE TABLE steel ( 
    serialno      INTEGER,
    unsno         TEXT,
    aisino        TEXT,
    treatment     TEXT,
    yield_str     INTEGER,
    tensile_str   INTEGER,
    stretch_ratio INTEGER,
    sectional_shr INTEGER,
    brinell       INTEGER 
);

CREATE TABLE lewis ( 
    serialno INTEGER PRIMARY KEY
                     NOT NULL,
    gearno   INTEGER,
    type1    NUMERIC,
    type4    NUMERIC,
    type3    NUMERIC,
    type2    NUMERIC 
);
'''

</t>
<t tx="amd.20151122075345.3">class Gear(object):
    @others
</t>
<t tx="amd.20151122075345.4">def __init__(self):
    # hope to create downloads and images directories　
    if not os.path.isdir(download_root_dir+"downloads"):
        try:
            os.makedirs(download_root_dir+"downloads")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"images"):
        try:
            os.makedirs(download_root_dir+"images")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"tmp"):
        try:
            os.makedirs(download_root_dir+"tmp")
        except:
            print("mkdir error")
</t>
<t tx="amd.20151122075345.6"># 各組利用 index 引導隨後的程式執行
#@app.route("/gear_index")
def index(self, *args, **kwargs):
    # 進行資料庫檔案連結,  並且取出所有資料
    try:
        # 利用 Store  建立資料庫檔案對應物件, 並且設定 frozen=True 表示不要開放動態資料表的建立
        # 因為程式以 application 所在目錄執行, 因此利用相對目錄連結 lewis.db 資料庫檔案
        SQLite連結 = Store(SQLiteWriter(_curdir+"/lewis.db", frozen=True))
        #material = SQLite連結.find_one("steel","serialno = ?",[序號])
        # str(SQLite連結.count("steel")) 將傳回 70, 表示資料庫中有 70 筆資料
        material = SQLite連結.find("steel")
        # 所傳回的 material 為 iterator
        '''
        outstring = ""
        for material_item in material:
            outstring += str(material_item.serialno) + ":" + material_item.unsno + "_" + material_item.treatment + "&lt;br /&gt;"
        return outstring
        '''
    except:
        return "抱歉! 資料庫無法連線&lt;br /&gt;"

    outstring = '''
&lt;form id=entry method=post action="/gear_width"&gt;
請填妥下列參數，以完成適當的齒尺寸大小設計。&lt;br /&gt;
馬達馬力:&lt;input type=text name=horsepower id=horsepower value=100 size=10&gt;horse power&lt;br /&gt;
馬達轉速:&lt;input type=text name=rpm id=rpm value=1120 size=10&gt;rpm&lt;br /&gt;
齒輪減速比: &lt;input type=text name=ratio id=ratio value=4 size=10&gt;&lt;br /&gt;
齒形:&lt;select name=toothtype id=toothtype&gt;
&lt;option value=type1&gt;壓力角20度,a=0.8,b=1.0
&lt;option value=type2&gt;壓力角20度,a=1.0,b=1.25
&lt;option value=type3&gt;壓力角25度,a=1.0,b=1.25
&lt;option value=type4&gt;壓力角25度,a=1.0,b=1.35
&lt;/select&gt;&lt;br /&gt;
安全係數:&lt;input type=text name=safetyfactor id=safetyfactor value=3 size=10&gt;&lt;br /&gt;
齒輪材質:&lt;select name=material_serialno id=material_serialno&gt;
'''
    for material_item in material:
        outstring += "&lt;option value=" + str(material_item.serialno) + "&gt;UNS - " + \
            material_item.unsno + " - " + material_item.treatment
    outstring += "&lt;/select&gt;&lt;br /&gt;"
    
    outstring += "小齒輪齒數:&lt;input type=text name=npinion id=npinion value=18 size=10&gt;&lt;br /&gt;"
    outstring += "&lt;input type=submit id=submit value=進行運算&gt;"
    outstring += "&lt;/form&gt;"

    return outstring
</t>
<t tx="amd.20151122075345.7">#@app.route("/interpoloation")
def interpolation(self, small_gear_no=18, gear_type=1):
    SQLite連結 = Store(SQLiteWriter(_curdir+"/lewis.db", frozen=True))
    # 使用內插法求值
    # 找出比目標齒數大的其中的最小的,就是最鄰近的大值
    lewis_factor = SQLite連結.find_one("lewis","gearno &gt; ?",[small_gear_no])
    if(gear_type == 1):
        larger_formfactor = lewis_factor.type1
    elif(gear_type == 2):
        larger_formfactor = lewis_factor.type2
    elif(gear_type == 3):
        larger_formfactor = lewis_factor.type3
    else:
        larger_formfactor = lewis_factor.type4
    larger_toothnumber = lewis_factor.gearno
 
    # 找出比目標齒數小的其中的最大的,就是最鄰近的小值
    lewis_factor = SQLite連結.find_one("lewis","gearno &lt; ? order by gearno DESC",[small_gear_no])
    if(gear_type == 1):
        smaller_formfactor = lewis_factor.type1
    elif(gear_type == 2):
        smaller_formfactor = lewis_factor.type2
    elif(gear_type == 3):
        smaller_formfactor = lewis_factor.type3
    else:
        smaller_formfactor = lewis_factor.type4
    smaller_toothnumber = lewis_factor.gearno
    calculated_factor = larger_formfactor + (small_gear_no - larger_toothnumber) * (larger_formfactor - smaller_formfactor) / (larger_toothnumber - smaller_toothnumber)
    # 只傳回小數點後五位數
    return str(round(calculated_factor, 5))
</t>
<t tx="amd.20151122075345.8"># 改寫為齒面寬的設計函式
#@app.route("/gear_width")
#def gear_width(self, horsepower=100, rpm=1000, ratio=4, toothtype=1, safetyfactor=2, material_serialno=1, npinion=18):
def gear_width(self):
    horsepower = request.form["horsepower"]
    rpm = request.form["rpm"]
    ratio = request.form["ratio"]
    toothtype = request.form["toothtype"]
    safetyfactor = request.form["safetyfactor"]
    material_serialno = request.form["material_serialno"]
    npinion= request.form["npinion"]
    SQLite連結 = Store(SQLiteWriter(_curdir+"/lewis.db", frozen=True))
    outstring = ""
    # 根據所選用的齒形決定壓力角
    if(toothtype == 1 or toothtype == 2):
        壓力角 = 20
    else:
        壓力角 = 25
 
    # 根據壓力角決定最小齒數
    if(壓力角== 20):
        最小齒數 = 18
    else:
        最小齒數 = 12
 
    # 直接設最小齒數
    if int(npinion) &lt;= 最小齒數:
        npinion = 最小齒數
    # 大於400的齒數則視為齒條(Rack)
    if int(npinion) &gt;= 400:
        npinion = 400
 
    # 根據所選用的材料查詢強度值
    # 由 material之序號查 steel 表以得材料之降伏強度S單位為 kpsi 因此查得的值要成乘上1000
    # 利用 Store  建立資料庫檔案對應物件, 並且設定 frozen=True 表示不要開放動態資料表的建立
    #SQLite連結 = Store(SQLiteWriter("lewis.db", frozen=True))
    # 指定 steel 資料表
    steel = SQLite連結.new("steel")
    # 資料查詢
    #material = SQLite連結.find_one("steel","unsno=? and treatment=?",[unsno, treatment])
    material = SQLite連結.find_one("steel","serialno=?",[material_serialno])
    # 列出 steel 資料表中的資料筆數
    #print(SQLite連結.count("steel"))
    #print (material.yield_str)
    strengthstress = material.yield_str*1000
    # 由小齒輪的齒數與齒形類別,查詢lewis form factor
    # 先查驗是否有直接對應值
    on_table = SQLite連結.count("lewis","gearno=?",[npinion])
    if on_table == 1:
        # 直接進入設計運算
        #print("直接運算")
        #print(on_table)
        lewis_factor = SQLite連結.find_one("lewis","gearno=?",[npinion])
        #print(lewis_factor.type1)
        # 根據齒形查出 formfactor 值
        if(toothtype == 1):
            formfactor = lewis_factor.type1
        elif(toothtype == 2):
            formfactor = lewis_factor.type2
        elif(toothtype == 3):
            formfactor = lewis_factor.type3
        else:
            formfactor = lewis_factor.type4
    else:
        # 沒有直接對應值, 必須進行查表內插運算後, 再執行設計運算
        #print("必須內插")
        #print(interpolation(npinion, gear_type))
        formfactor = self.interpolation(npinion, toothtype)
 
    # 開始進行設計運算
 
    ngear = int(npinion) * int(ratio)
 
    # 重要的最佳化設計---儘量用整數的diametralpitch
    # 先嘗試用整數算若 diametralpitch 找到100 仍無所獲則改用 0.25 作為增量再不行則宣告 fail
    counter = 0
    i = 0.1
    facewidth = 0
    circularpitch = 0
    while (facewidth &lt;= 3 * circularpitch or facewidth &gt;= 5 * circularpitch):
        diametralpitch = i
        #circularpitch = 3.14159/diametralpitch
        circularpitch = math.pi/diametralpitch
        pitchdiameter = int(npinion)/diametralpitch
        #pitchlinevelocity = 3.14159*pitchdiameter*rpm/12
        pitchlinevelocity = math.pi*pitchdiameter * float(rpm)/12
        transmittedload = 33000*float(horsepower)/pitchlinevelocity
        velocityfactor = 1200/(1200 + pitchlinevelocity)
        # formfactor is Lewis form factor
        # formfactor need to get from table 13-3 and determined ty teeth number and type of tooth
        # formfactor = 0.293
        # 90 is the value get from table corresponding to material type
        facewidth = transmittedload*diametralpitch*float(safetyfactor)/velocityfactor/formfactor/strengthstress
        if(counter&gt;5000):
            outstring += "超過5000次的設計運算,仍無法找到答案!&lt;br /&gt;"
            outstring += "可能所選用的傳遞功率過大,或無足夠強度的材料可以使用!&lt;br /&gt;"
            # 離開while迴圈
            break
        i += 0.1
        counter += 1
    facewidth = round(facewidth, 4)
    if(counter&lt;5000):
        outstring = "進行"+str(counter)+"次重複運算後,得到合用的facewidth值為:"+str(facewidth)
    return outstring
</t>
</tnodes>
</leo_file>
