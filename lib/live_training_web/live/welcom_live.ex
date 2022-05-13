defmodule LiveTrainingWeb.WelcomeLive do
  use LiveTrainingWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
       <h1>Welcome to Phoenix LiveViews Training</h1>
    """
  end
end
