defmodule CustomerAPIWeb.CustomersController do
  use CustomerAPIWeb, :controller

  def index(conn, _params) do
    customers = CustomerAPI.Repo.all(CustomerAPI.Customers)

    conn
    |> put_resp_header("content-type", "application/customer+json")
    |> json(customers)
  end

  def create(conn, _params) do
    newCustomer = %CustomerAPI.Customer {
      name: ""
    }

    customer = CustomerAPI.Repo.insert(newCustomer)

    conn
    |> put_status(:created)
    |> put_resp_header("content-type", "application/customer+json")
    |> json(customer)
  end

end
