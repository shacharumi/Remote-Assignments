/*:
 
# 2. Here are some Git and GitHub commands we usually use in software development.Please explain the meanings and use cases of them.
---˜
 a. git status
 查看當前目錄的狀態
 use case:
 當你對文件進行操作後，使用git status可以查看資料是否有無被提交
 b. git diff\
 比較當前的修改紀錄(與git add之前的檔案做對比)
 use case:
 當你想要查看你修改後的文件與上一次修改有哪些區別，使用git diff會幫你標記出來
 c. git add\
 把內容加到暫存區
 use case:
 當你對資料進行修改完後，使用git add "資料名稱"，可以將文件放到暫存區，為之後的操作做準備
 d. git reset\
 把資料回復到某個節點\
 use case:
 當你發現這次上傳的資料有問題，想要恢復到某個節點，使用git reset可以復原到那個節點的資料
 e. git commit\
 把暫存區的資料commit(提交)到Repository(儲存庫)
 use case:
 
 f. git log\
 查看git log(紀錄)\
 use case:
 當你想要檢查之前進行過哪些操作，使用git log可以看到之前的操作
 g. git branch\
 查看目前有哪些分支\
 use case:
 在你要push時，你會先確認目前在哪個分支上，這時候就可以用git branch來查看目前在哪個分支
 h. git merge\
 把分支跟目前的所在的分支合併 (有可能會遇到衝突)\
 use case:
 
 i. git push [ repo_name ] [ branch_name ]\
 把自己本機端儲存庫的資料上傳到遠端儲存庫\
 use case:
 將
 j. git remote\
 查詢遠端數據庫訊息\
 k. fork\
 把別人的紀錄叉過來 記得修改\
 l. (Advanced) git rebase\
 m. (Advanced) git cherry-pick\
 n. (Advanced) git reflog\
 o. (Advanced) git tag\

 
# 3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.

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


