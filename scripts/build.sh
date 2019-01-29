# シェルスクリプトの改行コードがRFLFだとLnux上で実行できない
nkf -Lu distribute.sh > /scripts/distribute.sh

# 比較演算子ミスってるので直す
sed -i "s/-ne/!=/" /scripts/distribute.sh

bash /scripts/distribute.sh
