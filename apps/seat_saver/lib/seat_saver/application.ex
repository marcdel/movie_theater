defmodule SeatSaver.Application do
  @moduledoc """
  The SeatSaver Application Service.

  The seat_saver system business domain lives in this application.

  Exposes API to clients such as the `SeatSaver.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      worker(SeatSaver.Repo, []),
    ], strategy: :one_for_one, name: SeatSaver.Supervisor)
  end
end
