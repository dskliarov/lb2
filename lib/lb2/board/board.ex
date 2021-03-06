defmodule Lb2.Board.Board do
  @moduledoc "Schema for a board record"
  use Ecto.Schema
  import Ecto.Changeset
  alias Lb2.Board.Column

  schema "boards" do
    field(:title, :string)
    has_many(:columns, Column)

    timestamps()
  end

  @doc false
  def changeset(board, attrs) do
    board
    |> cast(attrs, [:title])
    |> cast_assoc(:columns)
    |> validate_required([:title])
  end
end
