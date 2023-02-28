defmodule CirinoNotBaka.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ExGram,
      {CirinoNotBaka.Bot, [method: :polling, token: "token"]}
    ]

    opts = [strategy: :one_for_one, name: CirinoNotBaka.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
