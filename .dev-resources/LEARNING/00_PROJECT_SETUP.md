# Complete Portfolio Website Development Guide

## Introduction
This guide provides a comprehensive, step-by-step approach to setting up a professional portfolio website that doubles as a learning resource. Each step includes:
- What we're doing
- Why we're doing it
- Common mistakes to avoid
- References to example code (when applicable)

## Phase 1: Initial Project Creation and Environment Setup

### Step 1: Create Base Project Structure
```bash
# Create new project with Vite
npm create vite@latest portfolio-website -- --template react-ts

# Navigate to project directory
cd portfolio-website

# Install initial dependencies
npm install
```

**Why This Way?**
- We chose Vite over Create React App because:
  - Faster development server
  - Better TypeScript support
  - Modern build tooling
  - Smaller bundle sizes

**Common Mistake Avoided:** Many developers start with Create React App, which is slower and has outdated defaults.

### Step 2: Create Development Resources Structure
```bash
# Create development resource directories
mkdir -p .dev-resources/source/components
mkdir -p .dev-resources/source/sections
mkdir -p .dev-resources/source/constants
mkdir -p .dev-resources/utils/scripts
mkdir -p .dev-resources/LEARNING
```

**Why This Structure?**
- `.dev-resources/source/`: Contains educational, commented code
  - Keeps learning materials separate from production
  - Allows detailed comments without cluttering public code
- `.dev-resources/utils/`: Houses development utilities
- `.dev-resources/LEARNING/`: Stores documentation

**Common Mistake Avoided:** Initially, we mixed educational content with production code, making the repository unprofessional.

### Step 3: Set Up Comment Stripping Automation
```bash
# Install required package
npm install --save-dev strip-comments
```

Create `.dev-resources/utils/scripts/prepare-commit.js`:
```javascript
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
```

**Why This Script?**
- Automatically strips comments from TypeScript/JavaScript files
- Preserves CSS and other assets
- Maintains directory structure
- Runs before commits

**Common Mistake Avoided:** Manual comment removal is error-prone and often forgotten.

### Step 4: Update Package.json
Add these scripts to your `package.json`:
```json
{
  "scripts": {
    "prepare-prod": "node .dev-resources/utils/scripts/prepare-commit.js",
    "prepare": "node .dev-resources/utils/scripts/prepare-commit.js",
    "dev": "vite",
    "build": "tsc && vite build",
    "lint": "eslint . --ext ts,tsx --report-unused-disable-directives --max-warnings 0",
    "preview": "vite preview"
  }
}
```

**Why These Scripts?**
- `prepare-prod`: Manually run comment stripping
- `prepare`: Automatically runs during npm install
- Others are standard Vite scripts

### Step 5: Configure .gitignore
Create/update `.gitignore`:
```gitignore
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
```

**Why This Configuration?**
- Excludes development-only files
- Keeps repository clean
- Prevents accidental commits of learning materials

## Phase 2: Development Workflow Setup

### Step 6: Create Component Documentation Template
Create `.dev-resources/source/components/README.md`:
```markdown
# Component Documentation Template

## Component Structure
```typescript
/**
 * @component ComponentName
 * @description Brief description
 * 
 * @example
 * <ComponentName prop="value" />
 * 
 * @see Related components or documentation
 */
interface ComponentProps {
    /** Prop description */
    prop: type;
}

function ComponentName({ prop }: ComponentProps) {
    return (
        <div>
            {/* Implementation notes */}
            {prop}
        </div>
    );
}
```

### Step 7: Set Up Development Process
1. Always work in `.dev-resources/source/`
2. Use comprehensive comments:
   ```typescript
   /**
    * @fileoverview Purpose of the file
    * @see Related files or documentation
    */

   // Import statements with explanations
   import { Something } from './somewhere';  // Used for specific feature

   /**
    * @interface Description of interface
    */
   interface Props {
       /** Detailed prop description */
       prop: type;
   }
   ```
3. Run `npm run prepare-prod` before commits
4. Review generated files in `src/`

## Phase 3: First Component Creation

### Step 8: Create Your First Component
Create `.dev-resources/source/components/Button.tsx`:
```typescript
/**
 * @component Button
 * @description Reusable button component with variants
 * 
 * @example
 * <Button variant="primary" onClick={() => console.log('clicked')}>
 *   Click me
 * </Button>
 * 
 * @see .dev-resources/LEARNING/02_COMPONENT_STRUCTURE.md
 */

// Import React for JSX compilation
import React from 'react';

/**
 * Button variants for consistent styling
 * @typedef {'primary' | 'secondary' | 'danger'} ButtonVariant
 */
type ButtonVariant = 'primary' | 'secondary' | 'danger';

/**
 * Props for the Button component
 * @interface
 */
interface ButtonProps {
    /** The visual style variant of the button */
    variant: ButtonVariant;
    
    /** Click handler function */
    onClick: () => void;
    
    /** Button content */
    children: React.ReactNode;
    
    /** Optional CSS class names */
    className?: string;
}

/**
 * Button component with variants
 * @param props - See ButtonProps interface
 */
function Button({ 
    variant, 
    onClick, 
    children, 
    className = '' 
}: ButtonProps) {
    return (
        <button
            className={`button ${variant} ${className}`.trim()}
            onClick={onClick}
        >
            {children}
        </button>
    );
}

export default Button;
```

## Phase 4: Testing and Verification

### Step 9: Test Development Setup
1. Create a test component
2. Add detailed comments
3. Run `npm run prepare-prod`
4. Verify:
   - Comments are stripped in `src/`
   - Directory structure is maintained
   - CSS files are copied correctly

### Step 10: Git Setup
```bash
# Initialize repository
git init

# Add files
git add .

# Initial commit
git commit -m "initial commit"

# Add remote (replace with your repository)
git remote add origin https://github.com/username/portfolio-website.git

# Push to GitHub
git push -u origin main
```

## Common Issues and Solutions

### 1. Comments Not Stripping
**Problem:** Comments remain in production code
**Solution:** 
- Check file extensions (.ts, .tsx, .js, .jsx)
- Verify prepare-prod script ran successfully

### 2. Missing Production Files
**Problem:** Files not appearing in `src/`
**Solution:**
- Run `npm run prepare-prod` manually
- Check file paths in prepare-commit.js

### 3. Development Server Issues
**Problem:** Port conflicts or server not starting
**Solution:**
- Check for running processes on port 5173
- Kill conflicting processes or use different port

## Next Steps
1. Review [01_TYPESCRIPT_BASICS.md](./01_TYPESCRIPT_BASICS.md)
2. Start creating components in `.dev-resources/source/components/`
3. Follow the component documentation template
4. Regular commits with `prepare-prod`

Remember: The goal is to maintain a professional public repository while keeping all educational content in the development environment. 