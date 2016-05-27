defmodule HackBot.Slack do
  use Slack

  @token Application.get_env(:hack_bot, :slack_token)

  def start_link, do: start_link(@token, [])

  def handle_message(%{type: "message", reply_to: _}, _slack, state), do: {:ok, state}
  def handle_message(%{type: "message"} = message, slack, state) do
    private_channels = Map.keys(slack.ims)

    if Enum.member?(private_channels, message.channel) do
      send_message("Hello!", message.channel, slack)
    end

    {:ok, state}
  end
  def handle_message(_message, _slack, state), do: {:ok, state}
end
