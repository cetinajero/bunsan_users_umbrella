defmodule BunsanUsersWeb.UserView do
    use BunsanUsersWeb, :view
    alias BunsanUsersWeb.UserView

    def render("user.json", %{user: user}) do
        %{user: render("single_user.json", %{user: user})}
    end

    def render("single_user.json", %{user: user}) do
        %{  name:   user.name,
            age:    user.age,
            email:  user.email,
            id:     user.id }
    end

    def render("users.json", %{users: users}) do
        %{users: render_many(users, UserView, "single_user.json")}   
    end

  end
  