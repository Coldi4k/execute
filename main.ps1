# Define the Discord webhook URL
$webhookUrl = "https://discord.com/api/webhooks/1313276312785387630/mEg3aAlhf1T_jYIWVcukXUP68k_f5JkbrV_VHCqfB8R8IwOn3pQ6G2QQui3d_xgumMzt"

# Get the current logged-in username
$username = $env:USERNAME

# Create the payload with the message including the username
$payload = @{
    content = "Hello from $username!"
}

# Convert the payload to JSON
$jsonPayload = $payload | ConvertTo-Json

# Send the message to Discord webhook
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType "application/json" -Body $jsonPayload
