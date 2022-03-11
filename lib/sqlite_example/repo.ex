defmodule SqliteExample.Repo do
  use Ecto.Repo,
    otp_app: :sqlite_example,
    adapter: Ecto.Adapters.SQLite3
end
