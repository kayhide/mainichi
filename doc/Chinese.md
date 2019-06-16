# 中国語

## まいにち中国語
https://www2.nhk.or.jp/gogaku/chinese/kouza/
放　送：月～金曜日　午前8:15～8:30
再放送：同日 月～金曜日　午後10:15～10:30
再放送：日曜日　午前11:00～午後0:15（5回分）

## レベルアップ 中国語
https://www2.nhk.or.jp/gogaku/chinese/levelup/
放　送：月～金曜日　午後10:30～10:45

## おもてなしの中国語
https://www2.nhk.or.jp/gogaku/chinese/omotenashi/
放　送：月・火曜日　午後10:00～10:15


----

```
# crontab -e
14  8   * * 1-5 $MAINICHI_DIR/bin/record Chinese 900
14  22  * * 1-5 $MAINICHI_DIR/bin/record Chinese 900

29  22  * * 1-5 $MAINICHI_DIR/bin/record Chinese 900

59  21  * * 1-2 $MAINICHI_DIR/bin/record Chinese 900
```
