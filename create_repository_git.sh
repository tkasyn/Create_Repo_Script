#!/bin/sh

# Setup Environment Variables
export HOSTNAME=https://api.github.com                        # GitHub host address
# export PORT=...                                             # GitHub Ent. port
# export AUTHN_TKN=...                                        # GitHub authorization token
# export REP_NAME=54879521444                                  # Name for new GitHub repository 
GITHUB_TOKEN="${GITHUB_TKN}"

# Enter Repository Name, read it and set in var. REP_NAME
# read -p "Enter New Repsitory Name: " REP_NAME

echo "Will be created Repository: https://github.com/tkasyn/${REP_NAME}"

# Perform POST request to server's API to create new user with entered Repository Name using authorization token
curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  ${HOSTNAME}/user/repos \
  -d '{"name":'${REP_NAME}'}' \
  -H "authorization: token ${GITHUB_TOKEN}"

# Display the Server's response
