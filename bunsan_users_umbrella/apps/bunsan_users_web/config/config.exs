# Since configuration is shared in umbrella projects, this file
# should only configure the :bunsan_users_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :bunsan_users_web,
  ecto_repos: [BunsanUsers.Repo],
  generators: [context_app: :bunsan_users]

# Configures the endpoint
config :bunsan_users_web, BunsanUsersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mKGDVQQxgXWujhs9eLjrRM4/Ojdz4KZH7aS/iqEP8tHf/0XcNANpljtR8Qu0H0X9",
  render_errors: [view: BunsanUsersWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BunsanUsersWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
