# ロシア語

## まいにちロシア語（入門編）
https://www2.nhk.or.jp/gogaku/russian/kouza/
放　送：月～水曜日　午前8:50～9:05
再放送：同日 月～水曜日　午後4:30～4:45
再放送：翌週 月～水曜日　午後3:30～3:45


## まいにちロシア語（応用編）
https://www2.nhk.or.jp/gogaku/russian/kouza2/
放　送：木・金曜日　午前8:50～9:05
再放送：同日 木・金曜日　午後4:30～4:45
再放送：翌週 木・金曜日　午後3:30～3:45


----

```
# crontab -e
59  8   * * 1-5 $MAINICHI_DIR/bin/record Russian 900
29  16  * * 1-5 $MAINICHI_DIR/bin/record Russian 900
29  15  * * 1-5 $MAINICHI_DIR/bin/record Russian 900
```
