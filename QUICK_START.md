# NATIONAL PARKS COLORS - QUICK START GUIDE

## Package Overview
An R package providing 21 color palettes inspired by US National Parks, designed for data visualization.

## Installation

```r
# Option 1: From GitHub (recommended)
devtools::install_github("username/nationalparkscolors")

# Option 2: From local source
# Download the package, then:
install.packages("path/to/nationalparkscolors", repos = NULL, type = "source")
```

## Basic Commands

### Load the Package
```r
library(nationalparkscolors)
```

### See All Palettes
```r
names(natparks_palettes)
# Returns: "Yellowstone", "GrandCanyon", "Yosemite", "Zion", "Acadia", 
#          "RockyMountain", "Smokies", "Glacier", "Olympic", "Arches",
#          "JoshuaTree", "Everglades", "BryceCanyon", "GrandTeton",
#          "Shenandoah", "Denali", "Sequoia", "CraterLake", 
#          "DeathValley", "Badlands", "BigBend"
```

### Use a Palette
```r
# Get all colors (default 5 colors per palette)
natparks_palette("Yellowstone")

# Get specific number of colors
natparks_palette("GrandCanyon", 3)

# Create continuous palette (interpolated colors)
natparks_palette("CraterLake", 50, type = "continuous")
```

## Common Use Cases

### 1. ggplot2 - Discrete Colors
```r
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(values = natparks_palette("Glacier"))
```

### 2. ggplot2 - Continuous Scale
```r
ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_gradientn(colors = natparks_palette("Yosemite", type = "continuous"))
```

### 3. ggplot2 - Fill Colors
```r
ggplot(diamonds, aes(x = cut, fill = cut)) +
  geom_bar() +
  scale_fill_manual(values = natparks_palette("Acadia"))
```

### 4. Base R - Plot
```r
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = natparks_palette("Smokies")[iris$Species],
     pch = 19, cex = 1.5)
```

### 5. Base R - Heatmap
```r
pal <- natparks_palette("GrandTeton", 100, type = "continuous")
image(volcano, col = pal)
```

## Palette Recommendations by Data Type

### Categorical Data (3-5 categories)
- **Glacier** - High contrast, vibrant
- **GrandTeton** - Balanced, professional
- **Acadia** - Coastal, calm
- **Smokies** - Nature-focused

### Continuous Data (Gradients)
- **CraterLake** - Blue gradient, water data
- **Yosemite** - Earth tones, terrain
- **GrandCanyon** - Warm gradient, geology
- **Denali** - Cool gradient, climate

### Diverging Data
- **Yellowstone** - Warm to cool
- **Zion** - Red to blue-green
- **Arches** - Warm earth tones

## Accessing Color Codes

```r
# Get hex codes directly
natparks_palettes$Yellowstone
# Returns: "#F4E04D" "#4A90E2" "#D97826" "#8B7D6B" "#2C5F2D"

# Use in custom applications
my_colors <- natparks_palettes$CraterLake
plot(1:5, col = my_colors, pch = 19, cex = 3)
```

## Getting Help

```r
# Function documentation
?natparks_palette

# Palette list documentation
?natparks_palettes

# Package overview
?nationalparkscolors
```

## Tips & Best Practices

1. **Discrete vs Continuous**: Use discrete for categories (≤5), continuous for gradients
2. **Interpolation**: When you need more colors than a palette offers, use `type = "continuous"`
3. **Accessibility**: Test your visualizations for colorblind accessibility
4. **Print**: These palettes are designed to work well in print and digital formats
5. **Consistency**: Stick to one palette family for related visualizations

## Color Count by Palette
All palettes contain exactly 5 colors, optimized for common categorical data visualization needs.

## File Locations in Package

```
nationalparkscolors/
├── R/
│   ├── colors.R              # Main palette definitions and functions
│   └── nationalparkscolors.R # Package documentation
├── man/                      # Help documentation
├── DESCRIPTION               # Package metadata
├── NAMESPACE                 # Exported functions
├── README.md                 # Main documentation
├── USAGE_GUIDE.md           # Detailed usage examples
└── palette_showcase.html    # Visual palette browser
```

## Visual Reference

Open `palette_showcase.html` in your web browser to see all 21 palettes with:
- Color swatches
- Hex codes
- Park descriptions
- Interactive hover effects

## Support & Feedback

- Report bugs: GitHub Issues
- Request features: GitHub Issues
- Contribute: Submit pull requests
- Questions: Check USAGE_GUIDE.md

---

*Inspired by the natural beauty of America's National Parks*
*Version 0.1.0 | MIT License*
