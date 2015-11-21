import os
import guess

# 以下開始判斷在 OpenShift 或近端執行 ################### (4)
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    application = guess.app
else:
    # 表示在近端執行
    guess.app.run(debug=True)
