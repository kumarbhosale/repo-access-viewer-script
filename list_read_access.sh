#!/bin/bash

# Set your GitHub username and personal access token
GITHUB_USERNAME="your_github_username"
GITHUB_TOKEN="your_personal_access_token"

# Repository owner and name
REPO_OWNER="$1"
REPO_NAME="$2"

# API URL
API_URL="https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/collaborators"

# Make API request
response=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "$API_URL")

# Process JSON response using jq
collaborators=$(echo "$response" | jq -r '.[] | .login')

# Display collaborators
echo "Collaborators with read access to $REPO_OWNER/$REPO_NAME:"
echo "$collaborators"
