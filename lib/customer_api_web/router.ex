defmodule CustomerAPIWeb.Router do
  use CustomerAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CustomerAPIWeb do
    pipe_through :api

    post "/customers", CustomersController, :create
    get "/customers", CustomersController, :index
    get "/customers/:id", CustomersController, :details
    delete "/customers/:id", CustomersController, :delete
    patch "/customers/:id", CustomersController, :update
  end
end
