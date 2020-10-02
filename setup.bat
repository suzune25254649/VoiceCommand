@echo off

echo grammar-kitのダウンロードを開始
@bitsadmin /transfer myjob /PRIORITY FOREGROUND https://github.com/julius-speech/grammar-kit/archive/f078d29099c29c32b7acd345872aaa003b8638fb.zip %~dp0\grammar-kit\grammar-kit.zip
if not exist .\grammar-kit\grammar-kit.zip @bitsadmin /transfer myjob /PRIORITY FOREGROUND https://github.com/julius-speech/grammar-kit/archive/f078d29099c29c32b7acd345872aaa003b8638fb.zip %~dp0\grammar-kit\grammar-kit.zip

if not exist .\grammar-kit\grammar-kit.zip (
	echo ERROR
	echo ダウンロードに失敗しました。
	echo 時々失敗することがあるようなので、何度かやってみてください。
	pause
	exit
)

echo grammar-kitの解凍を開始
powershell -NoProfile -ExecutionPolicy Unrestricted .\exe\unzip.ps1

@move .\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb\* .\grammar-kit
for /d %%f in (.\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb\*) do @move %%f .\grammar-kit
@rd .\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb

echo 不要になったgrammar-kit.zipを削除
@del .\grammar-kit\grammar-kit.zip

if not exist .\grammar-kit\bin\win32\mkfa.exe (
	echo ERROR
	echo セットアップに失敗しました。手動でやってみてください。
	pause
	exit
)
@copy .\exe\mkdfa.exe .\grammar-kit\bin\win32\mkdfa.exe

echo SUCCEEDED
echo セットアップが正常に完了しました！
pause
exit