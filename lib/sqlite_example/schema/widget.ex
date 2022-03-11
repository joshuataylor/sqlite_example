defmodule SqliteExample.Widget do
  use Ecto.Schema
  import Ecto.Changeset
  import PolymorphicEmbed, only: [cast_polymorphic_embed: 3]

  schema "widget" do
    field :hello, :map

    field :metadata, PolymorphicEmbed,
      types: [
        bar: SqliteExample.Bar,
        baz: SqliteExample.Baz
      ],
      on_type_not_found: :raise,
      on_replace: :update
  end

  @doc false
  def changeset(%SqliteExample.Widget{} = foobar, attrs) do
    foobar
    |> cast(attrs, [
      :hello
    ])
    |> cast_polymorphic_embed(:metadata, required: false)
  end
end
