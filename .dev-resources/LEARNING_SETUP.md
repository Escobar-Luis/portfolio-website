# Development and Production Code Management Setup

## Overview
We've set up a system that allows you to:
1. Write code with detailed educational comments in `/src`
2. Automatically create a clean, comment-free version in `/src-prod`
3. Only commit the clean version to Git
4. Keep all learning materials locally

## Directory Structure
```
portfolio-website/
├── src/                 # Development code (with comments) - Not tracked by Git
├── src-prod/            # Production code (no comments) - Tracked by Git
├── .dev-resources/      # Learning materials - Not tracked by Git
├── .husky/             # Git hooks for automation
└── scripts/
    └── prepare-commit.js # Script to strip comments
```

## How It Works

### 1. Development Process
- You work in the `/src` directory
- Write as many educational comments as you want
- Keep your learning materials in `.dev-resources`
- Everything in these directories stays on your local machine

### 2. Production Process (Automated!)
The process is now fully automated! Just use Git normally:
```bash
git add .
git commit -m "Your message"
git push
```

Behind the scenes:
1. When you run `git commit`, a pre-commit hook:
   - Automatically runs `npm run prepare-prod`
   - Creates clean versions in `/src-prod`
   - Adds the `/src-prod` directory to the commit
2. Your commented code in `/src` stays local
3. Only the clean code gets committed

### 3. Git Workflow
Just use Git as you normally would:
```bash
# Everything is automated - no extra steps needed!
git add .
git commit -m "Your message"
git push
```

## What's Being Ignored by Git?
The `.gitignore` file is set up to ignore:
- `/src` directory (your commented code)
- `/.dev-resources` directory (learning materials)
- But it explicitly tracks `/src-prod`

## Files We Created

### 1. scripts/prepare-commit.js
```javascript
// Strips comments from TypeScript files
// Usage: Automatically run by Git hook
```
Key features:
- Uses `strip-comments` package
- Processes all `.ts` and `.tsx` files
- Maintains directory structure in `src-prod`

### 2. Package.json Scripts
```json
{
  "scripts": {
    "prepare-prod": "node scripts/prepare-commit.js",
    "prepare": "husky install"
  }
}
```

### 3. Git Hook (.husky/pre-commit)
```bash
#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"

# Run our prepare-prod script
npm run prepare-prod

# Add the src-prod directory to git
git add src-prod/
```

### 4. .gitignore Updates
```gitignore
# Development resources
.dev-resources/

# Development source files (with comments)
/src/

# Only track production files
!/src-prod/
```

## Quick Reference

### Daily Development
1. Work in `/src`
2. Add comments freely
3. Store learning materials in `.dev-resources`
4. Use Git normally - everything else is automated!

### Adding New Files
- Create them in `/src`
- They'll automatically be processed when you commit

## Benefits
1. **Learning**: Keep detailed notes and comments
2. **Professional**: Clean code in public repo
3. **Organization**: Clear separation between learning and production
4. **Flexibility**: Can always access your learning materials locally
5. **Automation**: No extra steps needed - just use Git normally!

## Packages Used
- `strip-comments`: Removes comments from code
- `husky`: Manages Git hooks for automation
  ```bash
  npm install --save-dev strip-comments husky
  ```

## Remember
- Work in `/src` directory
- Use Git normally - everything else is automated!
- Your educational comments are safe and local! 