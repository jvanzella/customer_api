defmodule CustomerAPIWeb.Router do
  use CustomerAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CustomerAPIWeb do
    pipe_through :api
  end
end
