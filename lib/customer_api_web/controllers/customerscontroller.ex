defmodule CustomerAPIWeb.CustomersController do
  use CustomerAPIWeb, :controller

  def index(conn, _params) do
    customers = CustomerAPI.Repo.all(CustomerAPI.Customers)

    conn
    |> put_resp_header("content-type", "application/customer+json")
    |> json(customers)
  end

  def details(conn, %{"id" => id}) do
    customer = CustomerAPI.Repo.get(CustomerAPI.Customers, String.to_integer(id))

    conn
    |> put_resp_header("content-type", "application/customer+json")
    |> json(customer)
  end

  def delete(conn, %{"id" => id}) do
    CustomerAPI.Repo.get(CustomerAPI.Customers, String.to_integer(id))
    |> CustomerAPI.Repo.delete

    conn
    |> put_status(:ok)
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

  def update(conn, _params) do
    conn
    |> put_resp_header("content-type", "application/customer+json")
    |> put_status(:ok)
    |> json({})
  end
end
