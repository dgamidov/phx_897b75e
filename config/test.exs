use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_897b75e, Phx897b75eWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phx_897b75e, Phx897b75e.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phx_897b75e_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
