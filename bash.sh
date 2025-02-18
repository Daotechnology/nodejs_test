#!/bin/bash

# Set project directory
PROJECT_DIR="my-node-app"

# Create project directory
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

# Initialize package.json (Silent mode)
npm init -y

# Install Express
npm install express

# Create a basic Express server file
cat <<EOL > server.js
const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.listen(PORT, () => {
    console.log(\`Server running on http://localhost:\${PORT}\`);
});
EOL

echo "Node.js Express setup completed!"
echo "Run your server with: node server.js"
