# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bunsan_users_web,
  namespace: BunsanUsersWeb,
  ecto_repos: [BunsanUsers.Repo]

# Configures the endpoint
config :bunsan_users_web, BunsanUsersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v6txIUqhGD0ZPTKhe0lxDIqnnqvMylU4D8ovwddqUdvqLqUzBxRFkxePuc1WuMXF",
  render_errors: [view: BunsanUsersWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BunsanUsersWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :bunsan_users_web, :generators,
  context_app: :bunsan_users

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
