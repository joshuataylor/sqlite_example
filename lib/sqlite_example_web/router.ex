defmodule SqliteExampleWeb.Router do
  use SqliteExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SqliteExampleWeb do
    pipe_through :api
  end
end
