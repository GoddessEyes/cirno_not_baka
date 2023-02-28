use Mix.Config

config :cirno_not_baka, CirnoNotBaka.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "cirno_not_baka",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"
