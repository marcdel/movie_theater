use Mix.Config

# Configure your database
config :seat_saver, SeatSaver.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "seat_saver_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
