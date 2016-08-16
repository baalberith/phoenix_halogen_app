ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixHalogenApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixHalogenApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixHalogenApp.Repo)

