defmodule Phx897b75eWeb.PageControllerTest do
  use Phx897b75eWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
