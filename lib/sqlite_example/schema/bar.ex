defmodule SqliteExample.Bar do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :ping, :string
    field :pong, :integer
  end

  @doc false
  def changeset(%SqliteExample.Bar{} = foobar, attrs) do
    foobar
    |> cast(attrs, [
      :ping,
      :pong
    ])
  end
end
