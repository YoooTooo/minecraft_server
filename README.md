初回のEC2 への git cloneは手動
```
git clone git@github.com:YoooTooo/minecraft_server.git
```

やり方はとりあえずここ
https://qiita.com/konuma1022/items/986eb58d4b94bef0c0a5
```
$ cd ~/.ssh
$ ssh-keygen -t rsa

Enter file in which to save the key (): minecraft_ec2_key
Enter passphrase (empty for no passphrase): [Enter]
Enter same passphrase again: [Enter]
```

秘密鍵は以下のコマンドで
```
cat minecraft_js.id_rsa | pbcopy.
```

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
ssh -i ~/.ssh/minecraft_js.id_rsa ubuntu@ec2-54-199-244-180.ap-northeast-1.compute.amazonaws.com
```

