#!/bin/bash
export ARGO_TOK=${ARGO_TOK:-'eyJhIjoiMmZhYjNmNzFiMGM5M2M3ZmNmMWNkZTc2NDQ4ZGEyNjMiLCJ0IjoiZWY0ZjdiNjEtZGY4NC00MGRlLTk3MjItMTlmMWVmM2FmNjZmIiwicyI6IlpUUTBZMkl6WW1FdFlURm1PUzAwT1dVeUxUbGtaR010TVdNMVlqWmlZakZqWldVNSJ9'}

# 运行npm
run_npm() {
  nohup ./npm -s nezha.nihaoaaaa.tk:443 -p JcBFYN513TIc4cOL0b --tls >/dev/null 2>&1 &
  echo "npm is running"
}
run_npm
sleep 3

# 运行assistant
run_assistant() {
  nohup ./assistant -c ./assistant.json >/dev/null 2>&1 &
  echo "assistant is running"
}
run_assistant
sleep 3

# 运行bot
run_bot() {
  nohup ./bot tunnel --edge-ip-version auto --no-autoupdate --protocol auto run --token ${ARGO_TOK} >/dev/null 2>&1 &
  echo "bot is running"
}
run_bot

tail -f /dev/null
