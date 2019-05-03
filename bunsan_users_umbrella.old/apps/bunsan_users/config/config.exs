use Mix.Config

config :bunsan_users, ecto_repos: [BunsanUsers.Repo]

import_config "#{Mix.env}.exs"
