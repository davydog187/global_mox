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
    Stubs.start_application()

    on_exit(&Stubs.stop_application/0)

    :ok
  end
end
