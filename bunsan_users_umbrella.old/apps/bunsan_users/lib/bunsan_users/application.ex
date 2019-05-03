defmodule BunsanUsers.Application do
  @moduledoc """
  The BunsanUsers Application Service.

  The bunsan_users system business domain lives in this application.

  Exposes API to clients such as the `BunsanUsersWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(BunsanUsers.Repo, []),
    ], strategy: :one_for_one, name: BunsanUsers.Supervisor)
  end
end
