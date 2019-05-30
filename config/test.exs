use Mix.Config

# Configure your database
config :customer_api, CustomerAPI.Repo,
  username: "postgres",
  password: "postgres",
  database: "customer_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :customer_api, CustomerAPIWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
