# MovieTheater

## Created with:
* `mix new --umbrella movie_theater`
* `mix phx.new movie_theater --umbrella`
* `cp -r movie_theater_umbrella/apps/movie_theater_web movie_theater/apps`
* `cd movie_theater/apps`
* `mix new seat_saver --sup`
* `sed -i -- 's/{:movie_theater, in_umbrella: true}/{:seat_saver, in_umbrella: true}/g' apps/movie_theater_web/mix.exs`
OR
* `mix phx.new seat_saver --umbrella`
* `cp -r seat_saver_umbrella/apps/seat_saver movie_theater/apps`
