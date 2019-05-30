defmodule CustomerAPI.Customers do
  use Ecto.Schema, :model

  schema "customers" do
    field :name, :string
  end
end
