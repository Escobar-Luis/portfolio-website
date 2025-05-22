# React Component Structure and Organization

## Introduction
This guide covers best practices for structuring and organizing React components in a TypeScript environment. Each section includes:
- Organizational patterns
- File structure
- Naming conventions
- Common pitfalls to avoid

## Project Structure

### Base Structure
```
portfolio-website/
├── .dev-resources/
│   ├── source/
│   │   ├── components/     # Reusable UI components
│   │   │   ├── common/    # Shared basic components
│   │   │   ├── layout/    # Layout components
│   │   │   └── features/  # Feature-specific components
│   │   ├── sections/      # Page sections
│   │   ├── hooks/         # Custom hooks
│   │   ├── utils/         # Utility functions
│   │   ├── types/         # Shared TypeScript types
│   │   └── styles/        # Global styles
│   └── LEARNING/          # Documentation
└── src/                   # Production code (auto-generated)
```

**Why This Structure?**
- Separates concerns
- Makes components discoverable
- Prevents circular dependencies
- Facilitates code reuse

## Component Organization

### 1. Component File Structure
```typescript
/**
 * @fileoverview Component description and purpose
 * @see Related components or documentation
 */

// 1. Imports
import React from 'react';
import { useEffect, useState } from 'react';
import type { ComponentProps } from './types';

// 2. Types/Interfaces
interface Props {
    // ...
}

// 3. Constants (if any)
const ANIMATION_DURATION = 300;

// 4. Helper Functions (if any)
function formatData(data: unknown): string {
    // ...
}

// 5. Component Definition
function ComponentName({ prop1, prop2 }: Props) {
    // a. Hooks
    const [state, setState] = useState();
    
    // b. Effects
    useEffect(() => {
        // ...
    }, []);
    
    // c. Event Handlers
    const handleClick = () => {
        // ...
    };
    
    // d. Render Methods
    const renderItem = () => {
        // ...
    };
    
    // e. Return JSX
    return (
        <div>
            {/* JSX structure */}
        </div>
    );
}

// 6. Export
export default ComponentName;
```

### 2. Component Types

#### a. Common Components
Located in `components/common/`
```typescript
// Button.tsx
interface ButtonProps {
    variant: 'primary' | 'secondary';
    children: React.ReactNode;
    onClick?: () => void;
}

function Button({ variant, children, onClick }: ButtonProps) {
    return (
        <button 
            className={`button ${variant}`}
            onClick={onClick}
        >
            {children}
        </button>
    );
}
```

#### b. Layout Components
Located in `components/layout/`
```typescript
// Container.tsx
interface ContainerProps {
    maxWidth?: 'sm' | 'md' | 'lg';
    children: React.ReactNode;
}

function Container({ maxWidth = 'md', children }: ContainerProps) {
    return (
        <div className={`container ${maxWidth}`}>
            {children}
        </div>
    );
}
```

#### c. Feature Components
Located in `components/features/`
```typescript
// ProjectCard.tsx
interface ProjectCardProps {
    title: string;
    description: string;
    technologies: string[];
    imageUrl: string;
}

function ProjectCard({ title, description, technologies, imageUrl }: ProjectCardProps) {
    return (
        <article className="project-card">
            <img src={imageUrl} alt={title} />
            <h3>{title}</h3>
            <p>{description}</p>
            <div className="technologies">
                {technologies.map(tech => (
                    <span key={tech}>{tech}</span>
                ))}
            </div>
        </article>
    );
}
```

## Best Practices

### 1. Component Naming
```typescript
// ❌ Bad: Unclear or generic names
function Card() {}
function Data() {}

// ✅ Good: Descriptive, specific names
function ProjectCard() {}
function UserDataDisplay() {}
```

### 2. Props Organization
```typescript
// ❌ Bad: Mixed prop types
interface Props {
    onClick: () => void;
    className: string;
    required: boolean;
    label: string;
}

// ✅ Good: Grouped by purpose
interface Props {
    // Display props
    label: string;
    className: string;
    
    // Behavior props
    required: boolean;
    onClick: () => void;
}
```

### 3. Component Composition
```typescript
// ❌ Bad: Monolithic component
function ProjectSection() {
    return (
        <section>
            <h2>Projects</h2>
            {/* 100+ lines of JSX */}
        </section>
    );
}

// ✅ Good: Composed components
function ProjectSection() {
    return (
        <section>
            <SectionHeader title="Projects" />
            <ProjectGrid>
                {projects.map(project => (
                    <ProjectCard key={project.id} {...project} />
                ))}
            </ProjectGrid>
        </section>
    );
}
```

## Common Patterns

### 1. Container Pattern
```typescript
// Container component (handles logic)
function UserProfileContainer() {
    const [user, setUser] = useState<User | null>(null);
    
    useEffect(() => {
        fetchUser().then(setUser);
    }, []);
    
    if (!user) return <Loading />;
    return <UserProfile user={user} />;
}

// Presentation component (handles display)
function UserProfile({ user }: { user: User }) {
    return (
        <div>
            <h2>{user.name}</h2>
            <p>{user.email}</p>
        </div>
    );
}
```

### 2. Compound Components
```typescript
// components/Select/index.tsx
const Select = {
    Root: function SelectRoot({ children }: { children: React.ReactNode }) {
        return <div className="select">{children}</div>;
    },
    
    Trigger: function SelectTrigger({ label }: { label: string }) {
        return <button className="select-trigger">{label}</button>;
    },
    
    Options: function SelectOptions({ children }: { children: React.ReactNode }) {
        return <ul className="select-options">{children}</ul>;
    },
    
    Option: function SelectOption({ value, children }: { value: string; children: React.ReactNode }) {
        return <li data-value={value}>{children}</li>;
    }
};

// Usage
function App() {
    return (
        <Select.Root>
            <Select.Trigger label="Choose option" />
            <Select.Options>
                <Select.Option value="1">Option 1</Select.Option>
                <Select.Option value="2">Option 2</Select.Option>
            </Select.Options>
        </Select.Root>
    );
}
```

## Exercises

1. Refactor this monolithic component into smaller, reusable components:
```typescript
function UserDashboard() {
    return (
        <div className="dashboard">
            <header>
                <h1>Welcome back, User</h1>
                <nav>{/* navigation items */}</nav>
            </header>
            <main>
                <section className="stats">
                    {/* statistics */}
                </section>
                <section className="recent-activity">
                    {/* activity list */}
                </section>
                <section className="notifications">
                    {/* notifications */}
                </section>
            </main>
        </div>
    );
}
```

2. Create a compound component for a custom form input with label, error message, and help text.

3. Implement a container/presentation pattern for a data-fetching component.

## Next Steps
1. Review [03_DEVELOPMENT_WORKFLOW.md](./03_DEVELOPMENT_WORKFLOW.md)
2. Start organizing your components using these patterns
3. Practice component composition with the exercises 