# Development Workflow Guide

## Introduction
This guide outlines the development workflow for maintaining a professional portfolio website while preserving educational content. It covers:
- Daily development process
- Code organization
- Version control
- Common issues and solutions

## Development Process Overview

### 1. Development Environment

#### Working Directory Structure
```
portfolio-website/
├── .dev-resources/
│   ├── source/          # Development code (with comments)
│   ├── utils/           # Development utilities
│   └── LEARNING/        # Documentation
└── src/                 # Production code (auto-generated)
```

**Why This Structure?**
- Keeps educational content separate from production code
- Maintains clean, professional public repository
- Preserves learning resources for future reference

### 2. Development Workflow Steps

#### Step 1: Component Development
```typescript
// .dev-resources/source/components/Feature.tsx

/**
 * @component Feature
 * @description A feature showcase component
 * 
 * @example
 * <Feature
 *   title="Amazing Feature"
 *   description="This feature does something cool"
 * />
 * 
 * @see .dev-resources/LEARNING/02_COMPONENT_STRUCTURE.md
 */

import React from 'react';

interface FeatureProps {
    /** The feature title */
    title: string;
    
    /** Detailed description of the feature */
    description: string;
}

function Feature({ title, description }: FeatureProps) {
    return (
        <div className="feature">
            <h3>{title}</h3>
            <p>{description}</p>
        </div>
    );
}

export default Feature;
```

#### Step 2: Testing
1. Start development server:
```bash
npm run dev
```

2. Test component functionality
3. Verify TypeScript types
4. Check for console errors

#### Step 3: Comment Processing
```bash
# Process comments and generate production code
npm run prepare-prod
```

#### Step 4: Version Control
```bash
# Stage changes
git add .

# Commit with meaningful message
git commit -m "feat: add feature component"

# Push changes
git push origin main
```

## Best Practices

### 1. Code Documentation
```typescript
/**
 * @fileoverview Brief description of the file
 * @see Related files or documentation
 */

// Import statements with purpose
import { Something } from './somewhere';  // Used for specific feature

/**
 * @interface Description of interface
 */
interface Props {
    /** Detailed prop description */
    prop: type;
}

/**
 * Component description
 * @param props See Props interface
 */
function Component(props: Props) {
    // Implementation details
}
```

### 2. Commit Message Format
```bash
# Format: <type>: <description>
git commit -m "feat: add user authentication"
git commit -m "fix: resolve navigation bug"
git commit -m "docs: update component documentation"
```

Types:
- feat: New feature
- fix: Bug fix
- docs: Documentation changes
- style: Formatting changes
- refactor: Code restructuring
- test: Adding tests
- chore: Maintenance tasks

### 3. Development Checklist

Before Starting:
- [ ] Working in `.dev-resources/source`
- [ ] TypeScript types imported
- [ ] Documentation references updated

During Development:
- [ ] Adding comprehensive comments
- [ ] Following component structure
- [ ] Testing functionality
- [ ] Checking TypeScript errors

Before Committing:
- [ ] Run `npm run prepare-prod`
- [ ] Verify production code
- [ ] Check for console errors
- [ ] Update documentation if needed

## Common Issues and Solutions

### 1. Comments Not Stripping
**Problem:** Comments remain in production code
```typescript
// This comment should be stripped
function Component() {
    return <div>Content</div>;
}
```

**Solution:**
1. Check file extension (should be .ts, .tsx, .js, .jsx)
2. Run prepare-prod manually:
```bash
npm run prepare-prod
```
3. Verify prepare-commit.js script

### 2. Development Server Issues
**Problem:** Port conflicts or server not starting

**Solution:**
1. Check for running processes:
```bash
lsof -i :5173
```

2. Kill conflicting process:
```bash
kill -9 <PID>
```

3. Use different port:
```bash
npm run dev -- --port 3000
```

### 3. TypeScript Errors
**Problem:** Type errors in development

**Solution:**
1. Check imports:
```typescript
// ❌ Bad: Implicit any
function process(data) {}

// ✅ Good: Explicit typing
function process(data: unknown) {}
```

2. Verify tsconfig.json settings
3. Update type definitions if needed

## Development Scenarios

### 1. Adding a New Feature

```bash
# 1. Create feature component
mkdir -p .dev-resources/source/components/features
touch .dev-resources/source/components/features/NewFeature.tsx

# 2. Develop with comments
vim .dev-resources/source/components/features/NewFeature.tsx

# 3. Test locally
npm run dev

# 4. Process for production
npm run prepare-prod

# 5. Commit changes
git add .
git commit -m "feat: add new feature component"
```

### 2. Fixing a Bug

```bash
# 1. Locate issue in source
vim .dev-resources/source/components/BuggyComponent.tsx

# 2. Add fix with explanation
/**
 * @fix Resolves issue #123
 * Previous implementation caused infinite loop
 * Now checking dependency array properly
 */
useEffect(() => {
    // Fixed implementation
}, [dependency]);

# 3. Test fix
npm run dev

# 4. Process and commit
npm run prepare-prod
git commit -m "fix: resolve infinite loop in BuggyComponent"
```

### 3. Updating Documentation

```bash
# 1. Update learning materials
vim .dev-resources/LEARNING/02_COMPONENT_STRUCTURE.md

# 2. Update component comments
vim .dev-resources/source/components/Component.tsx

# 3. Commit changes
git add .
git commit -m "docs: update component structure guide"
```

## Next Steps

1. Start implementing components following this workflow
2. Practice the development cycle with small features
3. Review and update documentation as needed

Remember:
- Always work in `.dev-resources/source`
- Keep comments educational and thorough
- Run prepare-prod before commits
- Maintain clean production code 