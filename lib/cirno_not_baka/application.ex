defmodule CirnoNotBaka.Application do
  use Application

  @impl true
  def start(_type, _args) do

    children = [
      ExGram,
      {CirnoNotBaka.Bot, [method: :polling, token: "token"]},
      %{
        id: CirnoNotBaka.Repo,
        start: {CirnoNotBaka.Repo, :start_link,  []}
      }
    ]

    opts = [strategy: :one_for_one, name: CirnoNotBaka.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
