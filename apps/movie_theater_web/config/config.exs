# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :movie_theater_web,
  namespace: MovieTheater.Web,
  ecto_repos: [MovieTheater.Repo]

# Configures the endpoint
config :movie_theater_web, MovieTheater.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "irimIyBJFoWK61ntvaow5O5memnmc8By1hR3zlTpHDPJro7VYTWq0D4Ww0Z0rCzD",
  render_errors: [view: MovieTheater.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MovieTheater.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
