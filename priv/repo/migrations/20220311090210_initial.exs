defmodule SqliteExample.Repo.Migrations.Initial do
  use Ecto.Migration

  def change do
    create table(:foobar) do
      add :hello, :map
      add :world, :string
      add :baz, :integer
    end

    create table(:widget) do
      add :hello, :string
      add :metadata, :map
    end
  end
end
