defmodule CustomerAPIWeb.Router do
  use CustomerAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CustomerAPIWeb do
    pipe_through :api

    get "/customers", CustomersController, :index
    post "/customers", CustomersController, :create
  end
end
