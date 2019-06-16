# フランス語

## まいにちフランス語（入門編）

https://www2.nhk.or.jp/gogaku/french/kouza/
放　送：月～水曜日　午前7:30～7:45
再放送：同日 月～水曜日　午後2:30～2:45
再放送：翌週 月～水曜日　午前11:00～11:15


## まいにちフランス語（応用編）

https://www2.nhk.or.jp/gogaku/french/kouza2/
放　送：木・金曜日　午前7:30～7:45
再放送：同日 木・金曜日　午後2:30～2:45
再放送：翌週 木・金曜日　午前11:00～11:15


----

```
# crontab -e
29  7   * * 1-5 $MAINICHI_DIR/bin/record French 900
29  14  * * 1-5 $MAINICHI_DIR/bin/record French 900
59  10  * * 1-5 $MAINICHI_DIR/bin/record French 900
```
