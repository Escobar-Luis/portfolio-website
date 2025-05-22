# Reference Code Guide

## Introduction
Reference code provides working examples that demonstrate best practices, patterns, and solutions. This guide explains how to use and create reference code in our project.

## Reference Code Structure

### Location
```
.dev-resources/
└── reference/
    ├── components/        # Component examples
    │   ├── basic/        # Basic component patterns
    │   ├── advanced/     # Advanced implementations
    │   └── patterns/     # Common patterns
    ├── hooks/            # Custom hook examples
    └── utils/            # Utility function examples
```

## Component References

### 1. Basic Button Component
```typescript
// .dev-resources/reference/components/basic/Button.tsx

/**
 * @reference Basic Button Component
 * @description Example of a properly structured button component
 * 
 * Key Features:
 * - Proper TypeScript types
 * - Accessibility attributes
 * - Variant support
 * - Proper event handling
 */

import React from 'react';

type ButtonVariant = 'primary' | 'secondary' | 'danger';

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
    variant: ButtonVariant;
    isLoading?: boolean;
}

function Button({ 
    variant, 
    isLoading,
    children,
    disabled,
    ...props 
}: ButtonProps) {
    return (
        <button
            {...props}
            disabled={isLoading || disabled}
            className={`button ${variant} ${isLoading ? 'loading' : ''}`}
            aria-busy={isLoading}
        >
            {isLoading ? 'Loading...' : children}
        </button>
    );
}

export default Button;
```

### 2. Form Input Component
```typescript
// .dev-resources/reference/components/basic/Input.tsx

/**
 * @reference Form Input Component
 * @description Example of an accessible form input with error handling
 * 
 * Key Features:
 * - Label integration
 * - Error handling
 * - Accessibility
 * - Proper event typing
 */

import React from 'react';

interface InputProps {
    label: string;
    error?: string;
    value: string;
    onChange: (value: string) => void;
    type?: 'text' | 'email' | 'password';
    required?: boolean;
}

function Input({
    label,
    error,
    value,
    onChange,
    type = 'text',
    required = false
}: InputProps) {
    const id = React.useId();
    
    return (
        <div className="form-field">
            <label htmlFor={id}>{label}</label>
            <input
                id={id}
                type={type}
                value={value}
                onChange={(e) => onChange(e.target.value)}
                required={required}
                aria-invalid={!!error}
                aria-describedby={error ? `${id}-error` : undefined}
            />
            {error && (
                <span id={`${id}-error`} className="error">
                    {error}
                </span>
            )}
        </div>
    );
}

export default Input;
```

## Custom Hook References

### 1. useLocalStorage Hook
```typescript
// .dev-resources/reference/hooks/useLocalStorage.ts

/**
 * @reference useLocalStorage Hook
 * @description Example of a type-safe localStorage hook
 * 
 * Key Features:
 * - Generic typing
 * - Error handling
 * - JSON parsing/stringifying
 */

import { useState, useEffect } from 'react';

function useLocalStorage<T>(key: string, initialValue: T) {
    // State to store our value
    // Pass initial state function to useState so logic is only executed once
    const [storedValue, setStoredValue] = useState<T>(() => {
        try {
            const item = window.localStorage.getItem(key);
            return item ? JSON.parse(item) : initialValue;
        } catch (error) {
            console.error(error);
            return initialValue;
        }
    });

    // Return a wrapped version of useState's setter function
    const setValue = (value: T | ((val: T) => T)) => {
        try {
            // Allow value to be a function so we have same API as useState
            const valueToStore = value instanceof Function ? value(storedValue) : value;
            setStoredValue(valueToStore);
            window.localStorage.setItem(key, JSON.stringify(valueToStore));
        } catch (error) {
            console.error(error);
        }
    };

    return [storedValue, setValue] as const;
}

export default useLocalStorage;
```

## How to Use Reference Code

### 1. Learning from References
- Study the implementation details
- Understand the comments and documentation
- Note the TypeScript patterns used
- Observe the organization and structure

### 2. Creating New Components
```typescript
// Example of using reference code as a guide
/**
 * @see .dev-resources/reference/components/basic/Button.tsx
 * This implementation follows the button reference pattern
 */
function MyCustomButton({ ...props }: MyCustomButtonProps) {
    // Implementation following reference patterns
}
```

### 3. Implementing Patterns
```typescript
// Example of implementing a pattern from references
/**
 * @see .dev-resources/reference/hooks/useLocalStorage.ts
 * Custom hook following the useLocalStorage pattern
 */
function useSessionStorage<T>(key: string, initialValue: T) {
    // Implementation following reference pattern
}
```

## Best Practices

1. **Reference Documentation**
   - Always include `@reference` tag
   - Explain key features
   - Document TypeScript patterns
   - Include usage examples

2. **Code Organization**
   - Keep reference code separate
   - Group by type (components, hooks, etc.)
   - Include basic and advanced examples
   - Maintain consistent structure

3. **Usage Guidelines**
   - Study before implementing
   - Adapt patterns to needs
   - Maintain type safety
   - Follow accessibility patterns

## Next Steps
1. Review the reference implementations
2. Practice implementing patterns
3. Create your own reference-based components 