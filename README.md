# EAC Image Swapper for Batch

原作者: [紅茶/tea](https://twitter.com/R_gray0125)  
Contributors: [Assault](https://twitter.com/SzlyNe_), [c30](https://twitter.com/c30_eo)

VRChat 起動時の Easy Anti-Cheat スプラッシュ画像を任意の画像に自動的に差し替える bat ファイルです。  
VRChat のみならず，殆どの Easy Anti-Cheat 採用ゲームで使用可能です。

# 導入方法

```
前提:
1. 差し替えたいスプラッシュ画像は全て同じディレクトリに配置してください。
2. 画像は全てスプラッシュ画像に使用可能な解像度 (多くの場合 800x450 ) にリサイズされている必要があります。
```

## ゲームへの導入 (例: VRChat)

1. `run.bat` を VRChat のルートディレクトリ (VRChat.exe と同じディレクトリ) に配置してください。
2. `randomizer.bat` を差し替えたいスプラッシュ画像が含まれているディレクトリの一個上に配置してください。
3. `randomizer.bat` のショートカット (`randomizer.bat.lnk`) を VRChat のルートディレクトリに配置してください。
4. VRChat の起動引数の頭に `run.bat %COMMAND%` を入力してください。
5. Done. 以下のガイドに従って `randomizer.bat` 内のパスを差し替えてください。

### パスの変更

1. `PhotoPATH` のパスを差し替えたいスプラッシュ画像が含まれているディレクトリパスに差し替えてください。
2. `SplashPATH` のパスを EAC の SplashScreen.png のファイルパスに差し替えてください。

## ゲームごとのスプラッシュ画像解像度
随時募集中です。いい感じにIssue建てるかPull Requestしてください。
| タイトル | 解像度 | 備考 |
| :-- | :-- | :-- |
| A.V.A Global | 800x450 | デフォルトではスプラッシュ画像は使用されていない為，Config.jsonを書き換える必要があります。
| VRChat | 800x450 | |