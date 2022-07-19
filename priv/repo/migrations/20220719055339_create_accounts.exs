defmodule AccountManagement.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :name, :string, null: false
      add :email, :string, null: false
      add :password, :string, null: false

      # inserted_at と update_at を自動で追加します。
      timestamps()
    end

    # 一意制約を宣言します。
    create unique_index(:accounts, [:email])
  end
end
