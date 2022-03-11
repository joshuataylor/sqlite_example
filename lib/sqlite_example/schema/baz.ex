defmodule SqliteExample.Baz do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :whee, :string
    field :whoo, :integer
    field :pop, :decimal
  end

  @doc false
  def changeset(%SqliteExample.Baz{} = foobar, attrs) do
    foobar
    |> cast(attrs, [
      :whee,
      :whoo,
      :pop
    ])
  end
end
