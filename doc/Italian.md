# イタリア語

## まいにちイタリア語（入門編）
https://www2.nhk.or.jp/gogaku/italian/kouza/
放　送：月～水曜日　午前7:45～8:00
再放送：同日 月～水曜日　午後4:45～5:00
再放送：翌週 月～水曜日　午前11:15～11:30

## まいにちイタリア語（応用編）
https://www2.nhk.or.jp/gogaku/italian/kouza2/
放　送：木・金曜日　午前7:45～8:00
再放送：同日 木・金曜日　午後4:45～5:00
再放送：翌週 木・金曜日　午前11:15～11:30


----

```
# crontab -e
44  7   * * 1-5 $MAINICHI_DIR/bin/record Italian 900
44  16  * * 1-5 $MAINICHI_DIR/bin/record Italian 900
14  11  * * 1-5 $MAINICHI_DIR/bin/record Italian 900
```
