defmodule Jsonata.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    file =
      Application.app_dir(:jsonata, "priv/main.ts")

    children = [
      # Starts a worker by calling: Jsonata.Worker.start_link(arg)
      # {Jsonata.Worker, arg}
      # {Sidecar.Supervisor, [processes: [bun: "bun --hot ", echo: "pwd"]]}
      {Sidecar.Supervisor, [processes: [bun: "bun --hot #{file}"]]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Jsonata.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
