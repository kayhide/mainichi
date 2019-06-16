# スペイン語

## まいにちスペイン語（初級編）

https://www2.nhk.or.jp/gogaku/spanish/kouza/
放　送：月～水曜日　午前7:15～7:30
再放送：同日 月～水曜日　午後2:45～3:00
再放送：翌週 月～水曜日　午前11:45～午後0:00

## まいにちスペイン語（中級編）

https://www2.nhk.or.jp/gogaku/spanish/kouza2/
放　送：木・金曜日　午前7:15～7:30
再放送：同日 木・金曜日　午後2:45～3:00
再放送：翌週 木・金曜日　午前11:45～午後0:00


----

```
# crontab -e
14  7   * * 1-5 $MAINICHI_DIR/bin/record Spanish 900
44  14  * * 1-5 $MAINICHI_DIR/bin/record Spanish 900
44  11  * * 1-5 $MAINICHI_DIR/bin/record Spanish 900
```
