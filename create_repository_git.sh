#!/bin/bash

# Setup Environment Variables
export HOSTNAME=https://api.github.com                        # GitHub host address
# export PORT=...                                             # GitHub Ent. port
export AUTHN_TKN=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     # GitHub authorization token
export REP_NAME=54879521                                  # Name for new GitHub repository 

# Enter Repository Name, read it and set in var. REP_NAME
# read -p "Enter New Repsitory Name: " REP_NAME

echo "Will be created Repository: https://github.com/tkasyn/${REP_NAME}"

# Perform POST request to server's API to create new user with entered Repository Name using authorization token
curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  ${HOSTNAME}/user/repos \
  -d '{"name":'${REP_NAME}'}' \
  -H "authorization: bearer ${AUTHN_TKN}"

# Display the Server's response
