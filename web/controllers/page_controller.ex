defmodule PhoenixHalogenApp.PageController do
  use PhoenixHalogenApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
