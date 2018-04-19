# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :first,
  ecto_repos: [First.Repo]

# Configures the endpoint
config :first, FirstWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5fsKa8oCmNKH5GgdcKYIjcjuIsL6PTxRCizkcMaZj4kgseZn405W0BysSDKrwsXG",
  render_errors: [view: FirstWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: First.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
