@echo off

echo grammar-kit�̃_�E�����[�h���J�n
@bitsadmin /transfer myjob /PRIORITY FOREGROUND https://github.com/julius-speech/grammar-kit/archive/f078d29099c29c32b7acd345872aaa003b8638fb.zip %~dp0\grammar-kit\grammar-kit.zip
if not exist .\grammar-kit\grammar-kit.zip @bitsadmin /transfer myjob /PRIORITY FOREGROUND https://github.com/julius-speech/grammar-kit/archive/f078d29099c29c32b7acd345872aaa003b8638fb.zip %~dp0\grammar-kit\grammar-kit.zip

if not exist .\grammar-kit\grammar-kit.zip (
	echo ERROR
	echo �_�E�����[�h�Ɏ��s���܂����B
	echo ���X���s���邱�Ƃ�����悤�Ȃ̂ŁA���x������Ă݂Ă��������B
	pause
	exit
)

echo grammar-kit�̉𓀂��J�n
powershell -NoProfile -ExecutionPolicy Unrestricted .\exe\unzip.ps1

@move .\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb\* .\grammar-kit
for /d %%f in (.\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb\*) do @move %%f .\grammar-kit
@rd .\grammar-kit\grammar-kit-f078d29099c29c32b7acd345872aaa003b8638fb

echo �s�v�ɂȂ���grammar-kit.zip���폜
@del .\grammar-kit\grammar-kit.zip

if not exist .\grammar-kit\bin\win32\mkfa.exe (
	echo ERROR
	echo �Z�b�g�A�b�v�Ɏ��s���܂����B�蓮�ł���Ă݂Ă��������B
	pause
	exit
)
@copy .\exe\mkdfa.exe .\grammar-kit\bin\win32\mkdfa.exe

echo SUCCEEDED
echo �Z�b�g�A�b�v������Ɋ������܂����I
pause
exit