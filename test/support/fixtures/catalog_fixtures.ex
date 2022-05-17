defmodule LiveTraining.CatalogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LiveTraining.Catalog` context.
  """

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> LiveTraining.Catalog.create_game()

    game
  end
end
