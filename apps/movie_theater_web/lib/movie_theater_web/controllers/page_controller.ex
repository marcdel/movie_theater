defmodule MovieTheater.Web.PageController do
  use MovieTheater.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
