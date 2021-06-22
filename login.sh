#!/bin/sh
U="$1"; PASS="$2"
curl -sL -H "Content-Type: application/json" -X POST https://chat.unix.lgbt/_matrix/client/r0/login --data-binary @- << EOF | jq -M > session.json
{
  "type": "m.login.password",
  "identifier": {
    "type": "m.id.user",
    "user": "${U}"
  },
  "password": "${PASS}",
  "initial_device_display_name": "Matrish (github.com/ThatGeekyWeeb/matrixsh) @$(HOSTNAME)"
}
EOF
