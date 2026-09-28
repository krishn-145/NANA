⚡ NANA
---
<img width="1254" height="1254" alt="162415" src="https://github.com/user-attachments/assets/df1a1e86-3dbf-406f-b3a4-bee8e8f28192" />

>FLOOW IN INSTAGRAM
@ur_.krishn._02
---

<p align="center">
  <b>🚀 OpenRouter API Toolkit for Termux on Android</b><br>
  Simple • Fast • Lightweight • Developer Friendly
</p><p align="center">
  <a href="https://openrouter.ai">OpenRouter</a> •
  <a href="https://openrouter.ai/keys">API Keys</a> •
  <a href="https://github.com/krishn-145">GitHub</a>
</p>---

📌 Repository Summary

OpenRouter API toolkit for Termux on Android — simple CLI setup, free-model support, secure environment-variable configuration, and easy API testing with "curl".

---

📖 About

OpenRouter Termux provides a simple way to connect to the OpenRouter API directly from an Android device using Termux.

It is designed for developers who want a lightweight command-line setup without requiring a desktop computer.

✨ Features

- 📱 Android + Termux support
- 🤖 OpenRouter API integration
- 🆓 Free-model routing with "openrouter/free"
- ⚡ Lightweight CLI workflow
- 🔐 Environment-variable API-key configuration
- 🧪 Simple API testing with "curl"
- 🛠️ Easy to customize
- 💻 No desktop required

---

📦 Requirements

You need:

- Android device
- Termux
- Internet connection
- OpenRouter account
- OpenRouter API key

---

🚀 Quick Start

1. Update Termux

pkg update -y && pkg upgrade -y

2. Install curl

pkg install curl -y

3. Create an OpenRouter API key

Open:

https://openrouter.ai/keys

Copy your API key.

---

🔑 Configure API Key

Set your key for the current Termux session:
```
export OPENROUTER_API_KEY="sk-or-v1-YOUR_API_KEY"
```
Replace:

YOUR_API_KEY

with your real OpenRouter API key.

---

💾 Permanent Configuration

To keep the API key available after restarting Termux:
```
echo 'export OPENROUTER_API_KEY="sk-or-v1-YOUR_API_KEY"' >> ~/.bashrc
```
Reload the shell:
```
source ~/.bashrc
```
Check:
```
echo "$OPENROUTER_API_KEY"
```
---

🧪 Test OpenRouter API

Run:
```
curl https://openrouter.ai/api/v1/chat/completions \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "openrouter/free",
    "messages": [
      {
        "role": "user",
        "content": "Hello! Reply with OK."
      }
    ]
  }'
```
If everything is configured correctly, OpenRouter will return a JSON response.

---

🆓 Free Model

This project uses:

openrouter/free

The OpenRouter free router can automatically select an available free model.

«⚠️ Free-model availability, limits, and routing can change. Check OpenRouter for the current available models and limits.»

---

⚡ One-Command Setup

You can configure Termux with:

pkg update -y && \
pkg install curl -y && \
read -p "Enter OpenRouter API Key: " OPENROUTER_API_KEY && \
```
echo "export OPENROUTER_API_KEY=\"$OPENROUTER_API_KEY\"" >> ~/.bashrc && \
```
```
export OPENROUTER_API_KEY="$OPENROUTER_API_KEY"
```
&& \
echo "✅ OpenRouter API configured successfully!"

Test immediately:

curl https://openrouter.ai/api/v1/chat/completions \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "openrouter/free",
    "messages": [
      {
        "role": "user",
        "content": "Hello from Termux!"
      }
    ]
  }'

---

💬 Simple Chat Script

Create a file:
```
https://github.com/krishn-145/NANA.git
cd NANA
bash setup.sh
chmod +x chat
./chat
```

Paste:

#!/data/data/com.termux/files/usr/bin/bash

if [ -z "$OPENROUTER_API_KEY" ]; then
    echo "❌ OPENROUTER_API_KEY is not set."
    echo
    echo "Set it with:"
    echo 'export OPENROUTER_API_KEY="YOUR_API_KEY"'
    exit 1
fi

read -p "You: " MESSAGE

curl -s https://openrouter.ai/api/v1/chat/completions \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{
    \"model\": \"openrouter/free\",
    \"messages\": [
      {
        \"role\": \"user\",
        \"content\": \"$MESSAGE\"
      }
    ]
  }"

Save the file and make it executable:

chmod +x chat

Run:

./chat

---

🔐 API Key Security

❌ Never hard-code your real key

Do not put this in public source code:

OPENROUTER_API_KEY="sk-or-v1-YOUR_REAL_KEY"

✅ Use an environment variable

export OPENROUTER_API_KEY="YOUR_API_KEY"

❌ Never commit your API key

Before pushing to GitHub, check your files:

grep -R "sk-or-v1-" .

If your real key appears, remove it before committing.

If an API key has already been exposed publicly, revoke it through OpenRouter and create a new one.

---

📁 Recommended Project Structure

openrouter-termux/
├── README.md
├── setup.sh
├── chat
├── .gitignore
└── LICENSE

---

🛡️ ".gitignore"

Create:

nano .gitignore

Add:

.env
.env.*
*.key
secrets/

---

🔧 Check Configuration

Check whether the variable exists:

if [ -n "$OPENROUTER_API_KEY" ]; then
    echo "✅ OpenRouter API key is configured."
else
    echo "❌ OpenRouter API key is not configured."
fi

---

🌐 Useful Links

Resource| Link
🤖 OpenRouter| https://openrouter.ai
🔑 API Keys| https://openrouter.ai/keys
📚 OpenRouter Docs| https://openrouter.ai/docs
👤 GitHub| https://github.com/krishn-145

---

🐛 Troubleshooting

"OPENROUTER_API_KEY is not set"

Run:
```
export OPENROUTER_API_KEY="YOUR_API_KEY"
```
Then:

echo "$OPENROUTER_API_KEY"

---

"401 Unauthorized"

Your API key may be invalid or revoked.

Create/check your key here:

https://openrouter.ai/keys

---

"429 Too Many Requests"

You may have reached a rate limit. Wait and try again, or check your OpenRouter account/model limits.

---

"curl: command not found"

Install curl:

pkg install curl -y

---

👤 Creator

Krishn

GitHub:

https://github.com/krishn-145

---

⭐ Support

If you find this project useful:

- ⭐ Star the repository
- 🍴 Fork the repository
- 🐛 Report bugs
- 💡 Suggest improvements

---

<p align="center">
  <b>⚡ Built for Termux • Powered by OpenRouter</b>
</p><p align="center">
  <sub>Made with ❤️ for Android developers</sub>
</p>
