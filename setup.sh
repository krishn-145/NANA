#!/data/data/com.termux/files/usr/bin/bash

echo "======================================"
echo "       NANA AI ERROR CHECKER"
echo "======================================"

echo
echo "[1] Python:"
python3 --version || echo "ERROR: Python not installed"

echo
echo "[2] Pip:"
python3 -m pip --version || echo "ERROR: Pip not available"

echo
echo "[3] install.py:"
[ -f install.py ] && echo "OK: install.py found" || echo "ERROR: install.py not found"

echo
echo "[4] Python syntax:"
if [ -f install.py ]; then
    python3 -m py_compile install.py \
        && echo "OK: No syntax error" \
        || echo "ERROR: Python syntax error"
fi

echo
echo "[5] Required modules:"
python3 -c "import requests" \
    && echo "OK: requests" \
    || echo "ERROR: requests"

python3 -c "import flask" \
    && echo "OK: flask" \
    || echo "ERROR: flask"

python3 -c "import flask_cors" \
    && echo "OK: flask-cors" \
    || echo "ERROR: flask-cors"

python3 -c "import telebot" \
    && echo "OK: pyTelegramBotAPI" \
    || echo "ERROR: pyTelegramBotAPI"

echo
echo "[6] OpenRouter connection:"
curl -Is --max-time 10 https://openrouter.ai >/dev/null \
    && echo "OK: Internet/OpenRouter reachable" \
    || echo "ERROR: Network connection"

echo
echo "[7] OpenRouter API key:"
[ -n "$OPENROUTER_API_KEY" ] \
    && echo "OK: API key is set" \
    || echo "ERROR: OPENROUTER_API_KEY is missing"

echo
echo "[8] Telegram token:"
[ -n "$TELEGRAM_BOT_TOKEN" ] \
    && echo "OK: Telegram token is set" \
    || echo "ERROR: TELEGRAM_BOT_TOKEN is missing"

echo
echo "[9] Running NANA processes:"
pgrep -af "python.*install.py" || echo "No NANA AI process running"

echo
echo "======================================"
echo "           CHECK COMPLETE"
echo "======================================"
