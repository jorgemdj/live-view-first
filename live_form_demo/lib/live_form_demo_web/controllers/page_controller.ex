defmodule LiveFormDemoWeb.PageController do
  use LiveFormDemoWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
