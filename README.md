# National Parks Colors 🏞️

> "In every walk with nature, one receives far more than he seeks." - John Muir

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![R](https://img.shields.io/badge/R-%3E%3D3.0-blue)](https://www.r-project.org/)

Bring the beauty of America's National Parks to your data visualizations! This R package provides 20 carefully crafted color palettes inspired by the natural landscapes, geology, and ecosystems of popular US National Parks.

## Installation

```r
# Install from GitHub
devtools::install_github("kvenkita/nationalparkscolors")
```

## Quick Start

```r
library(nationalparkscolors)

# See all available palettes
names(natparks_palettes)

# Use a palette
natparks_palette("Yellowstone")
natparks_palette("GrandCanyon")
natparks_palette("CraterLake")

# Get specific number of colors
natparks_palette("Yosemite", 3)

# Create continuous palette for gradients
natparks_palette("Glacier", 100, type = "continuous")
```

## Available Palettes

Each palette captures the essence of its park through 5 carefully selected colors:

### Western Parks

- **Yellowstone** - Golden geothermal features, blue hot springs, wildlife
- **Yosemite** - Granite cliffs, waterfalls, meadows, sequoias
- **GrandCanyon** - Layered sedimentary rock from rim to river
- **Zion** - Red rock canyons, Virgin River, desert flora
- **Glacier** - Glacial turquoise lakes, mountains, wildflowers
- **Olympic** - Rainforest moss, Pacific coast, mountains
- **Arches** - Red sandstone formations, natural arches
- **JoshuaTree** - Desert landscape, distinctive trees, night sky
- **BryceCanyon** - Orange hoodoos, pink limestone formations
- **GrandTeton** - Jagged peaks, alpine lakes, meadows
- **Sequoia** - Giant sequoia bark, forest, Sierra Nevada
- **CraterLake** - Deepest blue lake in US, volcanic caldera
- **DeathValley** - Salt flats, Artist's Palette, extreme desert

### Eastern Parks

- **Acadia** - Atlantic ocean, granite shores, coastal forests
- **Smokies** - Blue mist, diverse forests, wildflowers
- **Shenandoah** - Blue Ridge Mountains, autumn colors

### Other Regions

- **RockyMountain** - Alpine tundra, wildflowers, snow peaks
- **Denali** - Alaska wilderness, tundra, highest peak
- **Everglades** - Wetlands, sawgrass, mangroves
- **Badlands** - Layered formations, prairie grasslands

## Usage Examples

### With ggplot2

```r
library(ggplot2)

# Discrete colors
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(values = natparks_palette("Acadia")) +
  theme_minimal()

# Continuous colors
ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_gradientn(colors = natparks_palette("CraterLake", type = "continuous")) +
  theme_minimal()

# Fill colors
ggplot(mtcars, aes(x = factor(cyl), fill = factor(vs))) +
  geom_bar() +
  scale_fill_manual(values = natparks_palette("Smokies")) +
  theme_minimal()
```

### With Base R

```r
# Scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width, 
     col = natparks_palette("GrandTeton")[iris$Species],
     pch = 19, cex = 1.5)

# Heatmap
pal <- natparks_palette("Yosemite", 100, type = "continuous")
image(volcano, col = pal)
```

## Color Palette Details

| Park | Primary Colors | Inspiration |
|------|---------------|-------------|
| Yellowstone | Yellow, Blue, Orange, Grey, Green | Geothermal features, hot springs, wildlife |
| Grand Canyon | Red, Terracotta, Beige, Rose, Brown | Layered sedimentary rock |
| Yosemite | Grey, Blue, Green, Pine, Gold | Granite, waterfalls, meadows |
| Crater Lake | Deep Blue, Grey, Sky Blue, Black, White | Deepest blue lake water |
| Glacier | Turquoise, Grey, Magenta, Brown, Green | Glacial lakes, wildflowers |

*[See USAGE_GUIDE.md for complete palette details]*

## Design Philosophy

Each palette was designed with attention to:

- **Color Harmony** - Complementary and analogous color relationships
- **Perceptual Uniformity** - Colors are distinguishable and accessible
- **Data Visualization** - Works for both categorical and continuous data
- **Natural Inspiration** - Authentic representation of each park's character
- **Accessibility** - Consideration for colorblind-friendly combinations

## Visual Showcase

For a visual demonstration of all palettes, open `palette_showcase.html` in your browser after installing the package.

## Contributing

Contributions are welcome! To suggest improvements or new palettes:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Acknowledgments

Inspired by:
- The natural beauty of America's National Parks
- The excellent [Wes Anderson Palettes](https://github.com/karthik/wesanderson) package
- Color theory and data visualization best practices

## Support the Parks

If you find this package useful, consider supporting the [National Park Foundation](https://www.nationalparks.org/) to help preserve these incredible landscapes for future generations.

## License

MIT License - see LICENSE file for details

---

*Created with ❤️ for data visualization and the great outdoors*
