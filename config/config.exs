import Config

config :account_management, AccountManagement.Repo,
  database: "account_management_repo",
  username: "postgres",
  password: "postgres",
  hostname: "db"

config :account_management, ecto_repos: [AccountManagement.Repo]
