use Mix.Config

config :global_mox, GlobalMox.Interface, GlobalMox.Interface.MockImpl

# Configure your database
config :global_mox, GlobalMox.Repo,
  username: "postgres",
  password: "postgres",
  database: "global_mox_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :global_mox, GlobalMoxWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
