defmodule HelloWorld.PageController do
  use HelloWorld.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

  def foo(conn, _params) do
    render conn, "foo.html"
  end
end
