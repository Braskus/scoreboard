# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :scoreboard,
  ecto_repos: [Scoreboard.Repo]

# Configures the endpoint
config :scoreboard, ScoreboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aAv+NhRiEz2Buxw+siMlXzp2zTa2NUSp7jtqw+d7liza8PolyyMopx45l2nEEQe+",
  render_errors: [view: ScoreboardWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Scoreboard.PubSub,
  live_view: [signing_salt: "2TUU38sj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
