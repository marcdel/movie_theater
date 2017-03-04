use Mix.Config

config :seat_saver, ecto_repos: [SeatSaver.Repo]

import_config "#{Mix.env}.exs"
