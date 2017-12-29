defmodule Godot.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset
  alias Godot.Events.Event


  schema "events" do
    field :due, :naive_datetime
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Event{} = event, attrs) do
    event
    |> cast(attrs, [:title, :due])
    |> validate_required([:title, :due])
  end
end
