defmodule FirstAppWeb.PageView do
  use FirstAppWeb, :view

  def render("user.json", %{user: %{"age" => age, "name" => "Ricardo"}}) do
    %{specialuser: %{age: age, name: "Ricardo"}}
  end
end
