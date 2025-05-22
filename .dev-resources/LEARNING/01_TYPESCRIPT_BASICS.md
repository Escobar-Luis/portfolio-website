# TypeScript Fundamentals for React Development

## Introduction
This guide covers TypeScript fundamentals specifically for React development. Each section includes:
- Concept explanation
- Common mistakes to avoid
- Practical examples
- Best practices

## Basic Types in React Context

### 1. Props Types
```typescript
// ❌ Common Mistake: Loose typing
function Greeting(props: any) {
    return <h1>{props.name}</h1>;
}

// ✅ Correct: Strong typing
interface GreetingProps {
    name: string;
    age?: number;  // Optional prop
}

function Greeting({ name, age }: GreetingProps) {
    return <h1>{name} {age && `(${age})`}</h1>;
}
```

### 2. Event Types
```typescript
// ❌ Common Mistake: Using 'any' for events
const handleClick = (e: any) => {
    console.log(e.target.value);
};

// ✅ Correct: Proper event typing
const handleClick = (e: React.MouseEvent<HTMLButtonElement>) => {
    console.log(e.currentTarget.textContent);
};

const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    console.log(e.target.value);
};
```

### 3. State Types
```typescript
// ❌ Common Mistake: Not typing useState
const [user, setUser] = useState();

// ✅ Correct: Typed useState
interface User {
    id: number;
    name: string;
    email: string;
}

const [user, setUser] = useState<User | null>(null);
```

## Advanced Types

### 1. Union Types
```typescript
// Define possible values
type ButtonVariant = 'primary' | 'secondary' | 'danger';
type Size = 'small' | 'medium' | 'large';

interface ButtonProps {
    variant: ButtonVariant;
    size: Size;
}
```

### 2. Generic Components
```typescript
// ❌ Common Mistake: Not using generics for reusable components
function List(props: { items: any[] }) {
    return <ul>{props.items.map(item => <li>{item}</li>)}</ul>;
}

// ✅ Correct: Generic component
interface ListProps<T> {
    items: T[];
    renderItem: (item: T) => React.ReactNode;
}

function List<T>({ items, renderItem }: ListProps<T>) {
    return <ul>{items.map((item, index) => (
        <li key={index}>{renderItem(item)}</li>
    ))}</ul>;
}

// Usage
<List
    items={['apple', 'banana']}
    renderItem={(item) => <span>{item}</span>}
/>
```

### 3. Type Guards
```typescript
// Type guard for checking prop types
function isUser(obj: any): obj is User {
    return 'id' in obj && 'name' in obj;
}

function UserDisplay({ data }: { data: unknown }) {
    if (isUser(data)) {
        return <div>{data.name}</div>;  // TypeScript knows data is User
    }
    return null;
}
```

## Best Practices

### 1. Props Interface Naming
```typescript
// ❌ Common Mistake: Inconsistent naming
interface Props {
    // props
}

// ✅ Correct: ComponentNameProps convention
interface ButtonProps {
    // props
}
```

### 2. Children Prop Typing
```typescript
// ❌ Common Mistake: Not typing children
interface Props {
    children: any;
}

// ✅ Correct: Proper children typing
interface ContainerProps {
    children: React.ReactNode;
    // Or for specific child types:
    // children: React.ReactElement<typeof SpecificComponent>;
}
```

### 3. Event Handler Naming
```typescript
// ❌ Common Mistake: Unclear handler names
const click = () => {};

// ✅ Correct: Descriptive handler names
const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {};
const handleNameChange = (e: React.ChangeEvent<HTMLInputElement>) => {};
```

## Common TypeScript Patterns in React

### 1. Prop Spreading
```typescript
// ❌ Common Mistake: Spreading unknown props
function Button(props: any) {
    return <button {...props} />;
}

// ✅ Correct: Typed prop spreading
type ButtonProps = React.ButtonHTMLAttributes<HTMLButtonElement> & {
    variant: 'primary' | 'secondary';
};

function Button({ variant, ...props }: ButtonProps) {
    return <button className={variant} {...props} />;
}
```

### 2. Default Props
```typescript
// ❌ Common Mistake: Not typing default props
function Button({ size = 'medium' }) {
    return <button className={size} />;
}

// ✅ Correct: Typed default props
interface ButtonProps {
    size?: 'small' | 'medium' | 'large';
}

function Button({ size = 'medium' }: ButtonProps) {
    return <button className={size} />;
}
```

### 3. Conditional Rendering
```typescript
// ❌ Common Mistake: Not handling all cases
function UserStatus({ user }: { user: User | null }) {
    return <div>{user.name}</div>;  // Might be null!
}

// ✅ Correct: Safe conditional rendering
function UserStatus({ user }: { user: User | null }) {
    if (!user) return <div>No user</div>;
    return <div>{user.name}</div>;
}
```

## Exercises

1. Convert this component to TypeScript:
```jsx
function UserCard(props) {
    return (
        <div onClick={props.onClick}>
            <h2>{props.user.name}</h2>
            <p>{props.user.email}</p>
            {props.isAdmin && <span>Admin</span>}
        </div>
    );
}
```

2. Create a generic List component that can display any type of data.

3. Add proper type definitions for this form:
```jsx
function LoginForm() {
    const [formData, setFormData] = useState({
        username: '',
        password: ''
    });

    const handleSubmit = (e) => {
        e.preventDefault();
        // submit logic
    };

    return (
        <form onSubmit={handleSubmit}>
            <input
                value={formData.username}
                onChange={e => setFormData({
                    ...formData,
                    username: e.target.value
                })}
            />
            {/* ... rest of the form */}
        </form>
    );
}
```

## Next Steps
1. Review [02_COMPONENT_STRUCTURE.md](./02_COMPONENT_STRUCTURE.md)
2. Practice converting existing components to TypeScript
3. Implement the exercises above 