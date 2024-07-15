#!/bin/bash

echo "customer_id,min_sales_ymd";

# 未定義変数の問題で比較できないので、ソートしてcustomer_id毎に最初の行を表示する
tail -n +2 ./data/receipt.csv | LC_ALL=C sort -t, -k6,6 -k1,1n | awk -F, '
{
	if (prev != $6) {
		print $6","$1
		prev = $6
	}
}
' | head -n 10

