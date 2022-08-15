初回のEC2 への git cloneは手動

とりあえずここ
https://qiita.com/konuma1022/items/986eb58d4b94bef0c0a5

CIRCLE CIのプロジェクトに以下の設定をしなければならない

environments variableにて、
```
HOST_NAME：ec2-54-199-244-180.ap-northeast-1.compute.amazonaws.com
USER_NAME：ubuntu
```
SSH permissionsにて、
```
HOST_NAME：ec2-54-199-244-180.ap-northeast-1.compute.amazonaws.com
Fingerprint：秘密鍵
```

EC2へのssh接続
```
ssh -i ~/.ssh/minecraft_js.id_rsa ubuntu@ec2-54-199-244-180.ap-northeast-1.compute.amazonaws.com![image](https://user-images.githubusercontent.com/64087492/184573799-09c7a196-960b-466b-8471-64212f3bf0bc.png)
```

秘密鍵は以下のコマンドで
cat minecraft_js.id_rsa | pbcopy.
