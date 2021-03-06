defmodule Lb2.Board.Pile do
  @moduledoc "Schema for a board record"
  use Ecto.Schema
  import Ecto.Changeset
  alias Lb2.Board.{Card, Column}

  schema "piles" do
    field(:pos, :integer)
    has_many(:cards, Card)
    belongs_to(:column, Column)
  end

  @doc false
  def changeset(pile, attrs) do
    pile
    |> cast(attrs, [])
    |> cast_assoc(:cards)
  end
end
