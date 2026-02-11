# National Parks Colors - Installation & Usage Guide

## Quick Start

### Installation

```r
# Install from GitHub (development version)
install.packages("devtools")  # if you don't have it already
devtools::install_github("kvenkita/nationalparkscolors")
```

### Basic Usage

```r
library(nationalparkscolors)

# View all available palettes
names(natparks_palettes)

# Use a palette
natparks_palette("Yellowstone")
natparks_palette("GrandCanyon")
natparks_palette("CraterLake")

# Get specific number of colors
natparks_palette("Yosemite", 3)

# Create continuous palette
natparks_palette("Glacier", 100, type = "continuous")
```

## Using with ggplot2

### Discrete Colors

```r
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(values = natparks_palette("Acadia")) +
  theme_minimal()
```

### Continuous Colors

```r
ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_gradientn(colors = natparks_palette("CraterLake", type = "continuous")) +
  theme_minimal()
```

### Fill Colors

```r
ggplot(mtcars, aes(x = factor(cyl), fill = factor(vs))) +
  geom_bar() +
  scale_fill_manual(values = natparks_palette("Smokies")) +
  theme_minimal()
```

## Using with Base R

### Plots

```r
# Simple scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width, 
     col = natparks_palette("GrandTeton")[iris$Species],
     pch = 19, cex = 1.5)
```

### Heatmaps

```r
# Create continuous palette
pal <- natparks_palette("Yosemite", 100, type = "continuous")

# Use with built-in data
image(volcano, col = pal)
heatmap(as.matrix(mtcars), col = pal)
```

## All Available Palettes

1. **Yellowstone** - Geothermal features, geysers, hot springs
2. **GrandCanyon** - Layered rock formations
3. **Yosemite** - Granite cliffs, waterfalls, meadows
4. **Zion** - Red rock canyons, Virgin River
5. **Acadia** - Coastal Maine, granite shores
6. **RockyMountain** - Alpine tundra, wildflowers
7. **Smokies** - Misty mountains, diverse forests
8. **Glacier** - Glacial lakes, mountains
9. **Olympic** - Rainforest, coast, mountains
10. **Arches** - Red rock formations, natural arches
11. **JoshuaTree** - Desert landscape, distinctive trees
12. **Everglades** - Wetlands, sawgrass, wildlife
13. **BryceCanyon** - Hoodoos, unique erosion
14. **GrandTeton** - Jagged peaks, alpine lakes
15. **Shenandoah** - Blue Ridge Mountains
16. **Denali** - Alaska's highest peak, tundra
17. **Sequoia** - Giant sequoia trees
18. **CraterLake** - Deepest lake in US
19. **DeathValley** - Extreme desert, salt flats
20. **Badlands** - Layered formations, prairie

## Tips

- Each palette has 5 colors by default
- Use `type = "continuous"` to interpolate between colors for smooth gradients
- Palettes work for both discrete categorical data and continuous numerical data
- Colors are selected to be colorblind-friendly and print-friendly
- All hex codes are accessible in `natparks_palettes` list

## Examples by Use Case

### Maps

```r
library(maps)
library(ggplot2)

us_states <- map_data("state")
ggplot(us_states, aes(x = long, y = lat, group = group, fill = region)) +
  geom_polygon(color = "white") +
  scale_fill_manual(values = rep(natparks_palette("Olympic", 5), 10)) +
  theme_void() +
  theme(legend.position = "none")
```

### Time Series

```r
library(ggplot2)

ggplot(economics_long, aes(x = date, y = value, color = variable)) +
  geom_line(size = 1) +
  scale_color_manual(values = natparks_palette("Denali")) +
  theme_minimal() +
  facet_wrap(~variable, scales = "free_y")
```

### Density Plots

```r
ggplot(diamonds, aes(x = price, fill = cut)) +
  geom_density(alpha = 0.7) +
  scale_fill_manual(values = natparks_palette("BryceCanyon")) +
  theme_minimal()
```

## Getting Help

- View package documentation: `?natparks_palette`
- View palette list: `?natparks_palettes`
- Report issues: GitHub Issues page
- See visual showcase: Open `palette_showcase.html` in browser

## Color Theory

Each palette was designed considering:
- **Complementarity**: Colors that work well together
- **Contrast**: Sufficient distinction between colors
- **Harmony**: Natural color relationships
- **Accessibility**: Readability and colorblind-friendliness
- **Authenticity**: True representation of each park's character

Enjoy creating beautiful visualizations inspired by America's natural treasures!
