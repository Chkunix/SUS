# SASS Implementation for Movie Collection

This project demonstrates a comprehensive SASS implementation with variables, mixins, responsive design, and optimized calculations.

## Project Structure

```
wwwroot/
├── scss/
│   ├── _variables.scss    # Color variables for genres and base styles
│   ├── _functions.scss    # SASS functions for calculations
│   ├── _mixins.scss       # Mixins for movie cards and components
│   ├── _responsive.scss   # Responsive design mixins
│   └── main.scss          # Main stylesheet that imports all partials
├── css/
│   └── main.css           # Compiled CSS (generated)
└── index.html             # Demo HTML page
```

## Features Implemented

### 1. Variables (`_variables.scss`)
- **Genre Colors**: Color map for 10 different movie genres (action, comedy, drama, horror, thriller, romance, sci-fi, fantasy, animation, documentary)
- **Base Colors**: Primary, secondary, text, and background colors
- **Spacing Variables**: Consistent spacing scale
- **Typography Variables**: Font sizes and family
- **Breakpoints**: Responsive breakpoint definitions

### 2. Mixins (`_mixins.scss`)
- **`@mixin movie-card($genre)`**: Complete movie card styling including:
  - Image container
  - Title styling
  - Rating display with star icon
  - Genre badge
  - Hover effects
  - Genre-specific color theming

- **`@mixin responsive-grid($columns, $gap)`**: Grid layout system
- **`@mixin genre-section($genre)`**: Genre section styling with gradient backgrounds

### 3. Responsive Design (`_responsive.scss`)
- **`@mixin respond-to($breakpoint)`**: Media query mixin supporting:
  - `xs`, `sm`, `md`, `lg`, `xl` (breakpoint-based)
  - `mobile`, `tablet`, `desktop` (device-based)
  
- **`@mixin responsive-grid-columns()`**: Automatic grid column adjustment
- **`@mixin responsive-font-size($base-size)`**: Responsive typography
- **`@mixin responsive-padding($base-padding)`**: Responsive spacing

### 4. Functions & Operators (`_functions.scss`)
- **`calc-percentage($part, $total)`**: Calculate percentage widths
- **`calc-column-width($columns, $total-columns)`**: Grid column width calculations
- **`spacing($multiplier)`**: Spacing scale calculations
- **`font-scale($multiplier)`**: Font size scale calculations
- **`darken-genre($genre, $amount)`**: Darken genre colors
- **`lighten-genre($genre, $amount)`**: Lighten genre colors
- **`aspect-ratio($width, $height)`**: Aspect ratio calculations

## Compilation

### Using Node.js (sass package)

1. Install dependencies:
```bash
npm install
```

2. Compile SASS:
```bash
npm run sass
```

Or watch for changes:
```bash
npm run sass:watch
```

### Using Dart Sass CLI

```bash
sass wwwroot/scss/main.scss wwwroot/css/main.css
```

### Using Visual Studio Code

Install the "Live Sass Compiler" extension and it will automatically compile on save.

## Usage Examples

### Using Genre Variables
```scss
.action-movie {
  color: get-genre-color(action); // Returns #e74c3c
}
```

### Using Movie Card Mixin
```scss
.my-movie-card {
  @include movie-card(comedy);
}
```

### Using Responsive Mixins
```scss
.my-element {
  @include respond-to(mobile) {
    font-size: 14px;
  }
  
  @include respond-to(desktop) {
    font-size: 18px;
  }
}
```

### Using Functions for Calculations
```scss
.column {
  width: calc-column-width(6, 12); // 50% width
  padding: spacing(2); // 2 * $spacing-md
  font-size: font-scale(1.5); // 1.5 * $font-size-base
}
```

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- Responsive design works on mobile, tablet, and desktop devices

