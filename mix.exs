defmodule CirnoNotBaka.MixProject do
  use Mix.Project

  def project do
    [
      app: :cirno_not_baka,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {CirnoNotBaka.Application, []}
    ]
  end

  def deps do
    [
      {:ex_gram, "~> 0.33.0"},
      {:tesla, "~> 1.2"},
      {:hackney, "~> 1.12"},
      {:jason, ">= 1.0.0"}
    ]
  end
end
