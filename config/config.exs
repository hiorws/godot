# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :godot,
  ecto_repos: [Godot.Repo]

# Configures the endpoint
config :godot, GodotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kY7VVHrjMSN3ZWhpcaPXcDGvoS2rOz8p3FEpnCkAa5kBUnWRY/NIChu2GQn9+qRA",
  render_errors: [view: GodotWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Godot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
