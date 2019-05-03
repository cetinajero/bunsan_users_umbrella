# Since configuration is shared in umbrella projects, this file
# should only configure the :bunsan_users application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :bunsan_users, BunsanUsers.Repo,
  username: "postgres",
  password: "postgres",
  database: "bunsan_users_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
