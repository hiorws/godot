defmodule GodotWeb.PageController do
  use GodotWeb, :controller
  alias Godot.Events

  def index(conn, _params) do
    events = Events.list_future_events()
    render conn, "index.html", events: events
  end
end
