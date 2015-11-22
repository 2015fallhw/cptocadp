import os
import guess
# 導入 gear.py
import gear
# 假如 View 採用 class Guess() 架構, 則必須利用 appadd_url_rule 進行 routing, 而不可在 class 物件中使用 @app.route
# 等同 app.view_functions['index'] = Guess().index
#app.add_url_rule('/', 'index', Guess().index)
# 等同 app.view_functions['docheck'] = Guess().docheck, 而且允許使用 POST 方法
#app.add_url_rule('/docheck', 'docheck', Guess().docheck, methods=['POST'])
# 等同 app.view_functions['guessform'] = Guess().guessform
#app.add_url_rule('/guessform', 'guessform', Guess().guessform)
guess.app.add_url_rule('/gear_index', 'gear_index', gear.Gear().index)
guess.app.add_url_rule('/gear_width', 'gear_width', gear.Gear().gear_width, methods=['POST'])

# 以下開始判斷在 OpenShift 或近端執行 ################### (4)
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    application = guess.app
else:
    # 表示在近端執行
    guess.app.run(debug=True)
