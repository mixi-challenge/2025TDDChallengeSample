# TDD Challenge

できたら当日までに下記の環境を用意し，0_sample が動かせるか確かめておいていただけると助かります！

## 環境

- Ruby 3.4.2
- Docker Compose V2 (任意です！)

## mac の ruby を使う場合

### bundle install をしてください

```
$ bundle install
```

### RSpec を動かす

RSpec とは　 Ruby で人気のテストフレームワークです！
記述が直感的で分かりやすく，より人間が読める形でテストを書くのに適しています．

下記が動くかを確認してください．
**全てのテストを動かす**

```
$ bundle exec rspec
..

Finished in 0.0055 seconds (files took 0.09822 seconds to load)
2 examples, 0 failures
```

**ファイルを指定してテストを動かす**

```
$ bundle exec rspec spec/0_sample/lib/sample_spec.rb
..

Finished in 0.00596 seconds (files took 0.12365 seconds to load)
2 examples, 0 failures
```

### 参考：Minitest を動かす

今回は使いませんが，Minitest という Ruby に標準で組み込まれているテストフレームワークもあります．
軽量でシンプル・動作が速いという利点があります．

**全てのテストを動かす**

```
$ rake test
Run options: --seed 6336

# Running:

..

Finished in 0.000401s, 4987.5308 runs/s, 4987.5308 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

**ファイルを指定してテストを動かす**

```
$ ruby 0_sample/test/sample_test.rb
Run options: --seed 52890

# Running:

..

Finished in 0.001042s, 1919.3858 runs/s, 1919.3858 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

OK!!!!!!!!!!!!

```
$ rake test
Run options: --seed 6336

# Running:

..

Finished in 0.000353s, 5665.7203 runs/s, 5665.7203 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

## Docker を使う場合

### bundle install をしてください

```
$ docker compose run --rm tdd bundle install
```

### RSpec を動かす

**全てのテストを動かす**

```
$ docker compose run --rm tdd bundle exec rspec
..

Finished in 0.0055 seconds (files took 0.09822 seconds to load)
2 examples, 0 failures
```

**ファイルを指定してテストを動かす**

```
$ docker compose run --rm tdd bundle exec rspec spec/0_sample/lib/sample_spec.rb
..

Finished in 0.00596 seconds (files took 0.12365 seconds to load)
2 examples, 0 failures
```

### Minitest を動かす

**全てのテストを動かす**

```
$ docker compose run --rm tdd rake test
```

**ファイルを指定してテストを動かす**

```
$ docker compose run --rm tdd ruby 0_sample/test/sample_test.rb
```
