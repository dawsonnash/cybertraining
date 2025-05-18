Add-Type -AssemblyName System.Windows.Forms

# Function to open Rick Roll URL using default browser
function Open-RickRoll {
    try {
        Start-Process "cmd.exe" -ArgumentList "/c start https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    } catch {
        Start-Process "powershell" -ArgumentList "Start-Process 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'"
    }
}

Open-RickRoll

for ($i = 1; $i -le 10; $i++) {
    Start-Job {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.MessageBox]::Show("YOU'VE BEEN HACKED!", "💀 ALERT")
    }
}

Start-Sleep -Seconds 3

1..10 | ForEach-Object {
    Open-RickRoll
    Start-Sleep -Seconds 3
}
