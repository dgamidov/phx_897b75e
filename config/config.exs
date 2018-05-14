# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_897b75e,
  ecto_repos: [Phx897b75e.Repo]

# Configures the endpoint
config :phx_897b75e, Phx897b75eWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GzaDMY4fMFAGd4vI5HP4QeQUlB+/E3ezbu5vo4Ctv7sxGOlgSIDBt01ZyLeXKccX",
  render_errors: [view: Phx897b75eWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phx897b75e.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
