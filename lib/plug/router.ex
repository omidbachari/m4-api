defmodule M4Api.Plug.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/", do: send_resp(conn, 200, "{}")
  get "/status", do: send_resp(conn, 200, "")
  match _, do: send_resp(conn, 404, "Oops!")
end
