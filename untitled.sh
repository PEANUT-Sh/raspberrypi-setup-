#!/bin/sh
echo セットアップ開始
echo アップデート

update="sudo apt update"
eval $update

wait

echo fcitxのインストール
fcitx="sudo apt install fcitx-mozc -y"
eval $fcitx

wait

echo chromiumの日本語化
chromium="sudo apt install chromium-browser-l10n -y"
eval $chromium
wait

echo libreofficeの日本語化
office="sudo apt install libreoffice libreoffice-help-ja -y"
eval $office
wait

pisetup="piwiz"
eval $pisetup
echo 完了
