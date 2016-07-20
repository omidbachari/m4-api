defmodule M4Api.Plug.App do
  import Plug.Conn

  def init(options), do: options

  def call(%Plug.Conn{request_path: path} = conn, opts) do
    conn
  end
end
