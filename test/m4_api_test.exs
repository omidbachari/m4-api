defmodule M4ApiTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias M4Api.Plug.Router
  @opts Router.init([])

  test "root returns empty json object" do
    conn = conn(:get, "/")

    conn = Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "{}"
  end

  test "/status returns status 200" do
    conn = conn(:get, "/")

    conn = Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "{}"
  end

  test "the truth" do
    assert 1 + 1 == 2
  end
end
