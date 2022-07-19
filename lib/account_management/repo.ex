defmodule AccountManagement.Repo do
  use Ecto.Repo,
    otp_app: :account_management,
    adapter: Ecto.Adapters.Postgres
end
