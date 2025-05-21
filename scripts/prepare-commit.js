import fs from 'fs';
import path from 'path';
import strip from 'strip-comments';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Function to process a file
function processFile(filePath) {
    // Read the original file
    const content = fs.readFileSync(filePath, 'utf8');
    
    // Strip comments
    const strippedContent = strip(content);
    
    // Create the production version path
    const prodPath = filePath.replace('/src/', '/src-prod/');
    
    // Ensure directory exists
    const dir = path.dirname(prodPath);
    if (!fs.existsSync(dir)) {
        fs.mkdirSync(dir, { recursive: true });
    }
    
    // Write the stripped content
    fs.writeFileSync(prodPath, strippedContent);
    console.log(`Processed: ${filePath} -> ${prodPath}`);
}

// Function to walk through directory
function processDirectory(dir) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        
        if (stat.isDirectory()) {
            processDirectory(filePath);
        } else if (file.endsWith('.tsx') || file.endsWith('.ts')) {
            processFile(filePath);
        }
    });
}

// Start processing from src directory
const srcPath = path.join(path.dirname(__dirname), 'src');
processDirectory(srcPath); 