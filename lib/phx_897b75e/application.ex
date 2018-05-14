defmodule Phx897b75e.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Phx897b75e.Repo,
      # Start the endpoint when the application starts
      Phx897b75eWeb.Endpoint,
      # Starts a worker by calling: Phx897b75e.Worker.start_link(arg)
      # {Phx897b75e.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phx897b75e.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Phx897b75eWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
