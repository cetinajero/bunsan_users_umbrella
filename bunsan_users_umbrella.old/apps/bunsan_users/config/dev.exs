use Mix.Config

# Configure your database
config :bunsan_users, BunsanUsers.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bunsan_users_dev",
  hostname: "localhost",
  pool_size: 10
