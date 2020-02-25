defmodule GlobalMox.AppCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias GlobalMox.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
      import Mox
    end
  end

  setup do
    GlobalMox.MoxUtiity.stub_all()

    on_exit(fn ->
      :ok = Application.stop(:global_mox)
    end)

    :ok
  end
end
