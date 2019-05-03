defmodule UserApiWeb.PageView do
  use UserApiWeb, :view

  def render("user.json", %{user: %{"age" => age, "name" => "Ricardo"}}) do
    %{special_user: %{"message" => "User created", age: age, name: "Ricardo"}}
  end
end
