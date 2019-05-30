defmodule CustomerAPIWeb.CustomersController do
  use CustomerAPIWeb, :controller

def index(conn, _params) do
    customers = CustomerAPI.Repo.all(CustomerAPI.Customers)
    json conn, customers
  end
end
