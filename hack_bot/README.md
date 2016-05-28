# HackBot

Create a slackbot using elixir

## Installation

### Download the application
```
git clone git@github.com:barruumrex/elixir_hack_night.git
cd elixir_hack_night/hack_bot
mix deps.get
```

### Create a bot on slack

Creating a bot requires admin privileges in the slack community. If you're already an admin, continue with the following instructions. Otherwise, ask the organizer for your hack night or create your own slack team to experiment in.

Create and configure a new bot

*  [Create a new bot](https://my.slack.com/services/new/bot)
*  Make sure you're on the correct slack account. The selection is in the upper right corner
*  Choose a name and click "Add bot integration"
*  After creating the bot user, copy the API token 
  *  The API token will give access to your slack to anyone that has it. Be careful with this token and *DO NOT* check it in to source control
*  In config.exs, replace "Insert real token here" with your token
*  Start the server with `iex -S mix`

You should now see your new bot logged in on slack. Send it a message in a private chat and it respond with "Hello!". 

You're all set up to build your own slack bot. Get hackin!

