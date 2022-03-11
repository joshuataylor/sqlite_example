defmodule SqliteExample.Foobar do
  use Ecto.Schema
  import Ecto.Changeset

  schema "foobar" do
    field :hello, :map
    field :world, :string
    field :baz, :integer
  end

  @doc false
  def changeset(%SqliteExample.Foobar{} = foobar, attrs) do
    foobar
    |> cast(attrs, [
      :world,
      :baz,
      :hello
    ])
  end
end
