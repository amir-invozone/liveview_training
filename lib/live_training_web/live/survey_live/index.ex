defmodule LiveTrainingWeb.SurveyLive.Index do
  use LiveTrainingWeb, :live_view

  alias LiveTraining.{Accounts, Catalog}

  def mount(_params, %{"user_token" => user_token}, socket) do
    current_user = Accounts.get_user_by_session_token(user_token)

    {:ok,
     socket
     |> assign(:current_user, current_user)
     |> assign(:games, Catalog.list_games_with_user_rating(current_user.id))}
  end

  def handle_info({:created_rating, updated_game, game_index}, socket) do
    {:noreply, handle_rating_created(socket, updated_game, game_index)}
  end

  def handle_rating_created(
         %{assigns: %{games: games}} = socket,
         updated_game,
         game_index
       ) do

    socket
    |> put_flash(:info, "Rating submitted successfully")
    |> assign(
      :games,
      List.replace_at(games, game_index, updated_game)
    )
  end

end
