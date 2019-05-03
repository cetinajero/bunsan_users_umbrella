defmodule BunsanUsers.User do
    @moduledoc """
    Schema for user representation
    """

    use Ecto.Schema

    schema "users" do
        field :name, :string
        field :age, :integer
        field :email, :string
    end
end