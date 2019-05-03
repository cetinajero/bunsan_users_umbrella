defmodule BunsanUsers.Repo do
  use Ecto.Repo,
    otp_app: :bunsan_users,
    adapter: Ecto.Adapters.Postgres
end
