# Portfolio Website Development Guide (Vite + React + TypeScript)

## Project Overview
Modern 3D portfolio website with:
- 3D animations and models
- Responsive design
- Interactive components
- TypeScript implementation

## Implementation Steps

### 1. Initial Vite Setup
```bash
# Create Vite project
npm create vite@latest
# Select options:
# - Framework: React
# - Variant: TypeScript

# Navigate to project directory and install dependencies
cd portfolio-website
npm install

# Install required packages
npm install @react-three/fiber @react-three/drei three gsap @react-three/postprocessing

# Install and setup Tailwind CSS with Vite
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

### 2. Configure Vite and Tailwind
1. Update `vite.config.ts`:
```typescript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
})
```

2. Update `tailwind.config.js`:
```javascript
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

3. Update `src/index.css`:
```css
@tailwind base;
@tailwind components;
@tailwind utilities;

/* Base styles */
html, body {
  @apply w-screen bg-black text-white;
}

/* Custom utilities */
@layer utilities {
  .flex-center {
    @apply flex justify-center items-center;
  }
}
```

### 3. Project Structure (Vite Standard)
```
portfolio-website/
├── public/          # Static assets
├── src/
│   ├── components/  # Reusable components
│   ├── sections/    # Main page sections
│   ├── constants/   # Static data
│   ├── assets/      # Imported assets
│   ├── App.tsx      # Main app component
│   ├── main.tsx     # Entry point
│   └── index.css    # Global styles
├── index.html       # Entry HTML
├── vite.config.ts   # Vite configuration
├── tsconfig.json    # TypeScript configuration
└── package.json     # Project dependencies
```

### 4. Clean Up Default Vite Files
1. Remove unnecessary files:
```bash
rm src/assets/react.svg
rm src/App.css
```

2. Update `src/App.tsx`:
```typescript
const App = () => {
  return (
    <main className="relative z-0">
      {/* Sections will go here */}
    </main>
  );
};

export default App;
```

### 5. Component Development

#### Hero Section
```typescript
// src/sections/Hero.tsx
import { FC } from 'react';

interface HeroProps {}

const Hero: FC<HeroProps> = () => {
  return (
    <section id="hero" className="relative w-full h-screen overflow-hidden">
      {/* Background element */}
      <div className="absolute top-0 left-0 z-10">
        <img src="/bg.png" alt="background" className="w-full h-full object-cover" />
      </div>
      
      {/* Main content */}
      <div className="hero-layout">
        {/* Content will go here */}
      </div>
    </section>
  );
};

export default Hero;
```

#### Button Component
```typescript
// src/components/Button.tsx
import { FC } from 'react';

interface ButtonProps {
  text: string;
  className?: string;
  id?: string;
}

const Button: FC<ButtonProps> = ({ text, className, id }) => {
  return (
    <a className={`${className ?? ''} cta-wrapper`} id={id}>
      <div className="cta-button">
        <div className="bg-circle" />
        <p className="text">{text}</p>
        <div className="arrow-wrapper">
          <img src="/arrow-down.svg" alt="arrow" />
        </div>
      </div>
    </a>
  );
};

export default Button;
```

### 6. Data Management
```typescript
// src/constants/index.ts
interface Word {
  text: string;
  imgPath: string;
}

export const words: Word[] = [
  { text: "ideas", imgPath: "/images/ideas.svg" },
  { text: "code", imgPath: "/images/code.svg" },
  { text: "designs", imgPath: "/images/designs.svg" },
];
```

### 7. Development Commands
```bash
# Start Vite dev server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Next Steps Checklist
- [ ] Set up navigation bar
- [ ] Implement 3D room model with Three.js
- [ ] Create projects grid
- [ ] Add experience timeline
- [ ] Implement contact form
- [ ] Add GSAP animations

## TypeScript Tips
- Use FC type for functional components
- Define interfaces for all props
- Utilize Vite's built-in TypeScript support
- Keep type definitions close to components

## Notes
- Vite provides fast HMR (Hot Module Replacement)
- Use Vite's asset handling for optimal performance
- Test responsive design using Vite's dev server
- Utilize Vite's environment variables for configuration 