defmodule Valvex.Api.Game do
  @moduledoc false

  alias Valvex.HTTP

  @v "v2"

  # Gets game{name, version, available game stats}.
  def schema(gameid) do
    HTTP.get_body("http://api.steampowered.com/ISteamUserStats/GetSchemaForGame/#{@v}/?key=#{HTTP.key()}&appid=#{gameid}")
  end
end
