#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Setting up portfolio website project...${NC}"

# 1. Create project with Vite
echo -e "${GREEN}1. Creating Vite project...${NC}"
npm create vite@latest . -- --template react-ts

# 2. Install dependencies
echo -e "${GREEN}2. Installing dependencies...${NC}"
npm install

# 3. Create development resources structure
echo -e "${GREEN}3. Creating directory structure...${NC}"
mkdir -p .dev-resources/source/{components,sections,constants,hooks,utils,types,styles}
mkdir -p .dev-resources/LEARNING
mkdir -p .dev-resources/reference/{components/{basic,advanced,patterns},hooks,utils}
mkdir -p .dev-resources/utils/scripts

# 4. Install additional dependencies
echo -e "${GREEN}4. Installing additional dependencies...${NC}"
npm install --save-dev strip-comments

# 5. Copy documentation
echo -e "${GREEN}5. Setting up documentation...${NC}"
cat > .dev-resources/LEARNING/README.md << 'EOL'
# Portfolio Website Documentation

This directory contains comprehensive documentation for the portfolio website project.

## Guides
1. [Project Setup](./00_PROJECT_SETUP.md)
2. [TypeScript Basics](./01_TYPESCRIPT_BASICS.md)
3. [Component Structure](./02_COMPONENT_STRUCTURE.md)
4. [Development Workflow](./03_DEVELOPMENT_WORKFLOW.md)
5. [Reference Code](./REFERENCE_CODE.md)

## Getting Started
1. Read the guides in order
2. Review reference implementations
3. Follow development workflow
EOL

# 6. Create prepare-commit script
echo -e "${GREEN}6. Creating prepare-commit script...${NC}"
cat > .dev-resources/utils/scripts/prepare-commit.js << 'EOL'
import fs from 'fs';
import path from 'path';
import strip from 'strip-comments';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

function processFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const strippedContent = filePath.match(/\.(ts|tsx|js|jsx)$/) 
        ? strip(content)
        : content;
    const prodPath = filePath.replace('/.dev-resources/source/', '/src/');
    const dir = path.dirname(prodPath);
    if (!fs.existsSync(dir)) {
        fs.mkdirSync(dir, { recursive: true });
    }
    fs.writeFileSync(prodPath, strippedContent);
    console.log(`Processed: ${filePath} -> ${prodPath}`);
}

function processDirectory(dir) {
    const files = fs.readdirSync(dir);
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        if (stat.isDirectory()) {
            processDirectory(filePath);
        } else if (file.match(/\.(ts|tsx|js|jsx|css)$/)) {
            processFile(filePath);
        }
    });
}

const srcPath = path.join(path.dirname(path.dirname(path.dirname(__dirname))), '.dev-resources/source');
processDirectory(srcPath);
EOL

# 7. Update package.json scripts
echo -e "${GREEN}7. Updating package.json...${NC}"
# Using node to modify package.json
node -e "
const fs = require('fs');
const package = require('./package.json');
package.scripts = {
    ...package.scripts,
    'prepare-prod': 'node .dev-resources/utils/scripts/prepare-commit.js',
    'prepare': 'node .dev-resources/utils/scripts/prepare-commit.js'
};
fs.writeFileSync('package.json', JSON.stringify(package, null, 2));
"

# 8. Update .gitignore
echo -e "${GREEN}8. Updating .gitignore...${NC}"
cat > .gitignore << 'EOL'
# Dependencies
node_modules
dist
dist-ssr
*.local

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
pnpm-debug.log*
lerna-debug.log*

# Editor directories and files
.vscode/*
!.vscode/extensions.json
.idea
.DS_Store
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?

# Development resources
.dev-resources/source
EOL

# 9. Initialize git repository
echo -e "${GREEN}9. Initializing git repository...${NC}"
git init
git add .
git commit -m "initial commit: project setup"

echo -e "${BLUE}Setup complete! Next steps:${NC}"
echo "1. Review the documentation in .dev-resources/LEARNING/"
echo "2. Start development in .dev-resources/source/"
echo "3. Run 'npm run dev' to start development server" 