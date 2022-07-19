defmodule AccountManagement.Accounts do
  alias AccountManagement.Repo
  alias AccountManagement.Accounts
  import Ecto.Query

  @doc """
  idでアカウントを取得します。
  """
  def get_account(id) do
    Repo.get(Accounts.Account, id)
  end

  @doc """
  メールアドレスとパスワードでアカウントを取得します。
  """
  def get_account_by_email_and_password(email, password) do
    query =
      from(a in Accounts.Account,
        where: a.email == ^email
      )

    if account = Repo.one(query) do
      if account.password == password, do: account, else: nil
    else
      nil
    end
  end

  @doc """
  全てのアカウントを取得します。
  """
  def get_accounts() do
    Repo.all(Accounts.Account)
  end

  # attrs = %{name: "taro", email: "taro@sample.com", password: "taro999"}
  @doc """
  アカウントを作成します。
  """
  def create_account(attrs) do
    %Accounts.Account{}
    |> Accounts.Account.changeset(attrs)
    |> Repo.insert()
  end

  # attrs = %{name: "taro", email: "taro@sample.com"}
  @doc """
  アカウントの情報を更新します。
  """
  def update_account(account, attrs) do
    Accounts.Account.update_changeset(account, attrs)
    |> Repo.update()
  end

  @doc """
  指定したアカウントを削除します。
  """
  def delete_account(account) do
    Repo.delete(account)
  end
end
