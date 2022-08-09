初回のEC2 への git cloneは手動

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
秘密鍵は以下のコマンドで
cat minecraft_js.id_rsa | pbcopy.
