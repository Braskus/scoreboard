defmodule Scoreboard.Repo do
  use Ecto.Repo,
    otp_app: :scoreboard,
    adapter: Ecto.Adapters.Postgres
end
