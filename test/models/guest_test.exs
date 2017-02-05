defmodule HelloWorld.GuestTest do
  use HelloWorld.ModelCase

  alias HelloWorld.Guest

  @valid_attrs %{age: 42, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Guest.changeset(%Guest{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Guest.changeset(%Guest{}, @invalid_attrs)
    refute changeset.valid?
  end
end
