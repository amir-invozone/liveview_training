defmodule LiveTraining.Repo do
  use Ecto.Repo,
    otp_app: :live_training,
    adapter: Ecto.Adapters.Postgres
end
