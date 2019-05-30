defmodule CustomerAPI.Repo do
  use Ecto.Repo,
    otp_app: :customer_api,
    adapter: Ecto.Adapters.Postgres

end
