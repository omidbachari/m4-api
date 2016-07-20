defmodule M4Api do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    port = Application.get_env(:m4_api, :cowboy_port, 3000)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, M4Api.Plug.Router, [], [port: port])
    ]

    opts = [strategy: :one_for_one, name: M4Api.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
