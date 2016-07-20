defmodule M4Api.Plug.App do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{request_path: _path} = conn, _opts) do
    conn
  end
end
