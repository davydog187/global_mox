defmodule GlobalMox.Repo do
  use Ecto.Repo,
    otp_app: :global_mox,
    adapter: Ecto.Adapters.Postgres
end
