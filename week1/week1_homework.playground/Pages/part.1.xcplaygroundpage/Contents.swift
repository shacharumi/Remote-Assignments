/*:
 
# 2. Here are some Git and GitHub commands we usually use in software development.Please explain the meanings and use cases of them.
---
 a. git status\
 查看當前目錄的狀態\
 use case:\
 當有人想要查看目錄裡面的狀態，就可以使用git status
 
 ---
 b. git diff\
 比較當前的修改紀錄(與git add之前的檔案做對比)\
 use case:\
 當有人想要查看這次修改與上次修改的差異時，使用git diff可以幫你標註出哪裡有修改過
 
 ---
 c. git add\
 把內容加到索引(Staging Area )\
 use case:\
 當修改完資料後，要先加入到索引檢查有無問題
 
 ---
 d. git reset\
 把資料回復到某個節點\
 use case:\
 當你覺得這次資料修改的有問題，想要回到某個版本，這時候就要使用git reset
 
 ---
 e. git commit\
 把資料commit(提交)到Local Repository(本地數據庫)\
 use case:\
 資料加入索引檢查完後沒問題，就要使用git commit 將資料暫存到本地數據庫
 
 ---
 f. git log\
 查看紀錄\
 use case:\
 當你想查詢提交歷史的時候，就要使用git log來查詢
 
 ---
 g. git branch\
 查看目前有哪些分支\
 use case:\
 當你想查看除了目前分支之外，還有哪些分支時，就要使用git branch來查詢
 
 ---
 h. git merge\
 把分支跟目前的所在的分支合併 (有可能會遇到衝突)\
 use case:\
 當你想同步其他分支資料的時候，使用git merge 來進行整合
 
 ---
 i. git push [ repo_name ] [ branch_name ]\
 把自己本機端數據庫的資料上傳到遠端數據庫\
 use case:\
 當你想要把本地數據庫的資料上傳到遠端數據庫時，就要使用git push來上傳
 
 ---
 j. git remote\
 查詢遠端數據庫訊息\
 use case:\
 當你想得知遠程數據庫的資訊時，就要使用git remote查詢
 
 ---
 k. fork\
 複製別人的GitHub數據庫\
 use case:\
 當你想使用別人數據庫裡的內容時，使用git fork可以複製一份自已進行任意操作
 
 ---
 
 l. (Advanced) git rebase\
 合併分支的另一種方式\
 use case:\
 假設你有從main分支出a跟b兩個分支，使用merge會將兩個分支合併到main裡，而使用rebase會將a跟b兩個分支合併成一個分支
 
 ---
 m. (Advanced) git cherry-pick\
 挑選想要的commit放到目前分支上\
 use case:\
 有時候會突然有個臨時功能需要修改或新增，但是又不想要把整個分支合併進去，就可以使用git cherry-pick挑選自己想要的commit合併
 
 ---
 n. (Advanced) git reflog\
 查詢所有版本紀錄\
 use case:\
 當你使用 git reset --hard回復到以前版本的時候，，但是又想要回到最新提交的版本時，發現最新提交的版本消失了，這時候就要使用git relog查詢
 
 ---
 o. (Advanced) git tag\
 標記某個commit\
 use case:\
 因為分支會隨著commit移動，若你想要標記某個版本，使用tag可以標記在某個commit上，以便之後查詢
 
 ---
 
 
# 3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.

 ---
 1. 登陸GitHub，點擊右上角的加(Create new)，點擊new repository
 2. 設定所需條件後點擊Create repository
 3. 打開cmd,輸入cd 進入要使用的目錄 ex: cd desktop/test
 4. 輸入git init，建立並初始化新的Git數據庫
 5. 輸入git config --global user.name "your name"、git config --global user.email "your email"，告訴git使用哪個名稱與信箱來識別是誰在這台電腦進行操作
 6. 輸入vim LICENSE，按下 i 進入 INSERT mode，接著到 choosealicense網站選擇開源許可證 https://choosealicense.com ，為了確保項目的版權以及使用條款
 7. 輸入git add . ，將資料放入暫存區
 8. 輸入git commit -m "這次修改大綱"，將資料放在本地數據庫
 9. (非必要) 可以輸入git log查看紀錄
 10. 輸入git remote add origin + 你建立的repsosity的HTTPS或SSH ex: git remote add origin https://github.com/shacharumi/test.git
     目的是為了設定Git遠端資料庫
 11. 此時輸入 git remote -vv 就能看見你所配置的資料
     ex:origin https://github.com/shacharumi/test.git (fetch)
     你的遠端名稱就是 origin
 12. 輸入 git branch，確認目前分支名稱
 13. (第一次)輸入git push --set-upstream "遠端名稱" "分支名稱"，
     --set-upstream設置本地分支的上游分支為"遠端名稱/分之名稱"，之後可以直接用git push節省時間
 
 
 
 
 
 */
