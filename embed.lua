local webhookURL = "https://hooks.hyra.io/api/webhooks/xxxxxxxxx/xxxxxxxxxx" --Replace all "x" with the webhook URL. DO NOT CHANGE hooks.hyra.io!!! DOING SO WILL BREAK IT! More info here: https://devforum.roblox.com/t/discord-webhook-proxy/1500688
local HttpService = game:GetService("HttpService")

game:GetService("Players").PlayerAdded:Connect(function(player)
    --Add whatever you want right here, if you would like me to make a script designed so that when a player chats a command or anything, please create an issue in the issues tab
    local data = {
      ["embeds"] = {{
          ["title"] = "Title here",
          ["description"] = "Message here"
      }}
    }
    
    local encodedData = HttpService:JSONEncode(data)
    HttpService:PostAsync(webhookURL, encodedData)

end)
