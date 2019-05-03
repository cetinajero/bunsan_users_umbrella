defmodule BunsanUsers.UserTest do
    
    use BunsanUsers.DataCase

    setup do
        user = %BunsanUsers.User{}
        user_chg = BunsanUsers.User.signup_changeset(user, %{"name" => "Edgar", "age" => 30, "email" => "cetinajero@test.com"})
        stored_user = BunsanUsers.Repo.insert!(user_chg)
        {:ok, user: stored_user}
    end

    test "create user successfully" do
        user = %BunsanUsers.User{}
        changeset = BunsanUsers.User.signup_changeset(user, %{"name" => "Edgar", "age" => 30, "email" => "cetinajero@gmail.com"})
        assert changeset.valid? == true
    end

    test "create user unsuccessfully" do
        user = %BunsanUsers.User{}
        changeset = BunsanUsers.User.signup_changeset(user, %{"name" => "Edgar", "age" => "A", "email" => "cetinajero@gmail.com"})
        assert changeset.valid? == false
    end

    test "search user successfully", %{user: user} do
        user = BunsanUsers.User.search(user.id)
        assert user.name == "Edgar"
    end

    test "search all users" do
        users = BunsanUsers.User.search_all
        assert users != []
    end

    test "save" do
        user = %BunsanUsers.User{}
        user_chg = BunsanUsers.User.signup_changeset(user, %{"name" => "Edgar", "age" => 30, "email" => "cetinajero@save.com"})
        {:ok, stored_user} = BunsanUsers.User.save(user_chg)
        saved_user = BunsanUsers.User.search(stored_user.id)
        assert saved_user.email == "cetinajero@save.com"
    end

end