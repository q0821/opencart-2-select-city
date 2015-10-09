搭配 Simple and quick one page checkout and registration
http://www.opencart.com/index.php?route=extension/extension/info&extension_id=4811

1.讓 前臺的countrt zone city postcode 會連動
2.修正simple and quick one page checkout and registration 套件沒有改到的地方，
  例如會員中心的地址簿列表，後臺的訂單管理，會員管理的頁面

安裝步驟
* 記得先備份

步驟 1.
先安裝 Simple and quick one page checkout and registration

步驟 2.
安裝後把 upload 資料夾裏面的東西，上傳到opencart 根目錄
應該會覆蓋到 /catalog/model/tool/simplemain.php 
其他的不會覆蓋到

步驟 3.
後臺安裝 simple-city-fix.ocmod.xml

步驟 4.
修改 zone_city.sql 中的前綴 ，使用phpmyadmin等工具匯入，

步驟 5.
後臺的模組管理 -> simple and quick one page checkout 設定
一般設定
使用欄位自動完成「鄉鎮市區」
透過Google API使用欄位自動完成「郵遞區號」
這兩個不要打勾

欄位的部分，
city 欄位
值 從模組中取得 
getCities
按此欄位的篩選結果 選 zone

postcode 欄位
值 從模組中取得
getPostcode
按此欄位的篩選結果 選 city


**目前問題
目前是非常簡易版本，
1.city沒有編輯界面可管理，只能透過zone_city.sql 修改，不過會有人要手動去編輯city嗎？？光臺灣就起碼319以上了....
2.資料庫設計沒有規劃多國語言及 city 的啓用狀態
3.後臺連動的部分只有做會員編輯，訂單編輯的部分，推薦會員的地址沒有連動，所以會直接看到city id

參考資料：
jQuery TWzipcode
建立三碼台灣郵遞區號下拉清單的 jQuery Plugin — 讀取快速、不需資料庫。
http://app.essoduke.org/twzipcode/

別人寫的給 opencart 1.5.x 的選擇city
https://github.com/opencart-id/select-city
有做city 的管理界面可以參考