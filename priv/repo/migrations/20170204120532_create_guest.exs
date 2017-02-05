defmodule HelloWorld.Repo.Migrations.CreateGuest do
  use Ecto.Migration

  def change do
    create table(:guests) do
      add :name, :string
      add :age, :integer

      timestamps()
    end

  end
end
