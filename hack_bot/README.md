# HackBot

Create a Slack bot using Elixir

## Installation

### Download the application
```
git clone https://github.com/barruumrex/elixir_hack_night.git
cd elixir_hack_night/hack_bot
mix deps.get
```

### Create a bot on Slack

Creating a bot requires admin privileges in the Slack organization. If you're already an admin, continue with the following instructions. Otherwise, ask hack night organizer for help or create your own Slack team to experiment in.

Create and configure a new bot

*  [Create a new bot](https://my.slack.com/services/new/bot)
*  Make sure you're on the correct Slack account. The selection is in the upper right corner
*  Choose a name and click "Add bot integration"
*  After creating the bot user, copy the API token 
  *  The API token will give access to your Slack to anyone that has it. Be careful with this token and *DO NOT* check it in to source control
*  In `config/config.exs`, replace `Insert real token here` with your token
*  Start the server with `iex -S mix`

You should now see your new bot logged in on Slack. Send it a message in a private chat and it will respond with "Hello!". 

You're all set up to build your own Slack bot. Get hackin!

## Resources

[Slack RTM documentation](https://api.slack.com/rtm)

[Elixir Slack library documentation](https://hexdocs.pm/slack/Slack.html)

## Acknowledgements

*  Thank you to [Daniel Grieve](https://twitter.com/cazzrin) for creating the [blog post](http://cazrin.net/blog/2016/building-a-slack-bot-using-elixir/) project is based on. 
*  Thank you to [BlackWilliams](https://github.com/BlakeWilliams) for creating the [elixir-slack](https://github.com/BlakeWilliams/Elixir-Slack/) application that powers this project.
