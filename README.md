# VoiceCommand
音声コマンドを、キーボード入力に変換するツール

# 寄付の仕方
https://www.amazon.co.jp/Amazon%E3%82%AE%E3%83%95%E3%83%88%E5%88%B8-E%E3%83%A1%E3%83%BC%E3%83%AB%E3%82%BF%E3%82%A4%E3%83%97/dp/BT00DHI8G4

こちらのAmazonギフト券で、下記メールアドレスまで贈ってくれると嬉しいです。ボイロ動画制作のために使用します。

suzune25254649@gmail.com

# セットアップの仕方
右上にある"Code"をクリックし、"Download ZIP"を選んでください。

解凍し、中にあるsetup.batを起動してください。

セットアップが正常に完了しなかった場合、このページ末尾にある手動セットアップを試してください。

# 起動の仕方
- command/aviutlに移動します
- run.bat で起動します

あとは画面の指示に従って「起動」と言い、その後は音声コマンドで操作ができるようになります。

# サンプル(aviutl)
AviUtlを操作するための命令集です。

https://github.com/suzune25254649/AviUtlHelper

こちらのツールと組み合わせて使うのを想定しています。

|音声|操作|
|----|----|
|右|タイムラインの次のオブジェクトへ移動|
|左|タイムラインの前のオブジェクトへ移動|
|上|タイムラインの上レイヤーのオブジェクトへ移動|
|下|タイムラインの下レイヤーのオブジェクトへ移動|
|数字(1～99)|数字入力後、タブキー|
|次|タブキー|
|タブ|タブキー|
|良し|ENTERキー|

動画編集を便利に行うための準備については、AviUtlHelperのページをご覧ください。

# サンプル(basic)
数字について-9999兆9999億9999万9999～9999兆9999億9999万9999を認識するようにしてあります。

フォルダごとコピーしてから、command.vocaを編集してみてください。

編集の仕方は下記にあります。

フォトショップなど、音声で操りたい対象に合わせてコマンドを追加しましょう。

# 辞書を編集する
- command.voca ファイルを編集する。
- compile.bat を起動する。

%COMMAND の下にコマンドを追加したり、元からあるもの不要なコマンドを削除したりしてください。

VK_RETURN[タブ]y o sh i

このVKで始まるのは「仮想キーコード」と言われるものです。
http://kts.sakaiweb.com/virtualkeycodes.html

VK_A,VK_B,VK_SHIFT+VK_C[タブ]t e s u t o

これで「テスト」としゃべれば「Aキー」を押したあと「Bキー」を押したあと「シフトキーを押しながらCキー」を押してくれます。

# FAQ

## なんか動かない
分からん！
grammar-kit側の説明を確認してくれ。

## 音声認識精度が悪い
これもgrammar-kit側の説明を確認してくれ。

とりあえず「2.5mmピンで接続する古いマイク」だとノイズが酷くて認識精度が悪かった。Bluetoothのヘッドセットに切り替えたら綺麗に認識した。とだけ書いておく。

## 十と言っているのに十九として認識される（など）
人によっては「じゅう…」が「じゅうく…」と認識されるっぽい？
command.vocaで「j u k u」を削除して（compile.batを起動して反映して）使うというのはどうだろうか？

十九を打ちたい時は「じゅうきゅう」と言うべし。

# 手動セットアップ
https://github.com/julius-speech/grammar-kit/tree/f078d29099c29c32b7acd345872aaa003b8638fb

こちらからもZipをダウンロードして展開。
grammar-kitフォルダの中に、上記URLからダウンロードしたZipの中身を下記のようになるようコピーします。

- VoiceCommand-master
    - command
    - exe
    - grammar-kit
        - bin
        - doc
        - model
        - SampleGrammars
        - ...
    - .gitmodules
    - LICENSE
    - README.md
    - setup.bat
    - ThirdPartyLicense.md

