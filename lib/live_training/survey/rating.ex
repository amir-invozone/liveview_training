defmodule LiveTraining.Survey.Rating do
  use Ecto.Schema
  import Ecto.Changeset

  schema "ratings" do
    field :rating, :integer

    belongs_to :user, LiveTraining.Accounts.User
    belongs_to :game, LiveTraining.Catalog.Game

    timestamps()
  end

  @doc false
  def changeset(rating, attrs) do
    rating
    |> cast(attrs, [:rating, :game_id, :user_id])
    |> validate_required([:rating, :game_id, :user_id])
  end
end
