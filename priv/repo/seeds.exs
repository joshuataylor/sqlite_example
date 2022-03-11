# create a SqliteExample.Foobar
alias SqliteExample.Repo

foobar =
  %SqliteExample.Foobar{}
  |> SqliteExample.Foobar.changeset(%{world: "earth", baz: 42, hello: %{v: 1, z: "x", b: 22.22}})
  |> Repo.insert()

IO.inspect foobar

widget =
  %SqliteExample.Widget{}
  |> SqliteExample.Widget.changeset(%{
    metadata: %{
      __type__: :bar,
      ping: "chrome",
      pong: 100
    },
    hello: %{v: 1, z: "x", b: 22.22}
  })
  |> Repo.insert()

IO.inspect(widget)
