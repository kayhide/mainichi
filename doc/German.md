# ドイツ語

## まいにちドイツ語（入門編）
https://www2.nhk.or.jp/gogaku/german/kouza/
放　送：月曜～水曜　午前7:00～7:15
再放送：同日 月～水曜日　午後3:15～3:30
再放送：翌週 月～水曜日　午前11:30～11:45

## まいにちドイツ語（応用編）
https://www2.nhk.or.jp/gogaku/german/kouza2/
放　送：木・金曜日　午前7:00～7:15
再放送：同日 木・金曜日　午後3:15～3:30
再放送：翌週 木・金曜日　午前11:30～11:45


----

```
# crontab -e
59  6   * * 1-5 $MAINICHI_DIR/bin/record German 900
14  15  * * 1-5 $MAINICHI_DIR/bin/record German 900
29  11  * * 1-5 $MAINICHI_DIR/bin/record German 900
```
