# TDD Challenge
## Requirements
- Ruby 3.4.2
- Docker Compose V2 (optional)

## Sample
### bundle install
```
$ bundle install
```

### minitest
all tests
```
$ rake test
Run options: --seed 6336

# Running:

..

Finished in 0.000401s, 4987.5308 runs/s, 4987.5308 assertions/s.

2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

single test
```
$ cd 0_sample
$ ruby test/sample_test.rb
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

### RSpec
all tests
```
$ bundle exec rspec
..

Finished in 0.0055 seconds (files took 0.09822 seconds to load)
2 examples, 0 failures
```

single test
```
$ bundle exec rspec spec/0_sample/lib/sample_spec.rb
..

Finished in 0.00596 seconds (files took 0.12365 seconds to load)
2 examples, 0 failures
```

## For Docker
bundle install
```
$ docker compose run --rm tdd bundle install
```

### minitest
all tests
```
$ docker compose run --rm tdd rake test
```

single test
```
$ docker compose run --rm tdd ruby 0_sample/test/sample_test.rb
```

### RSpec
all tests
```
$ docker compose run --rm tdd bundle exec rspec
..

Finished in 0.0055 seconds (files took 0.09822 seconds to load)
2 examples, 0 failures
```

single test
```
$ docker compose run --rm tdd bundle exec rspec spec/0_sample/lib/sample_spec.rb
..

Finished in 0.00596 seconds (files took 0.12365 seconds to load)
2 examples, 0 failures
```
