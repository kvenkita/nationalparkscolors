#' Complete list of palettes
#'
#' Use \code{\link{natparks_palette}} to construct palettes of desired length.
#'
#' @export
natparks_palettes <- list(
  # Yellowstone - Geothermal features, geysers, hot springs, wildlife
  # Golden bacterial mats, deep blue hot springs, orange-brown bison, grey-white steam, evergreen forests
  Yellowstone = c("#F4E04D", "#4A90E2", "#D97826", "#8B7D6B", "#2C5F2D"),
  
  # Grand Canyon - Layered sedimentary rock formations from rim to river
  # Red rock, terracotta, sandy beige, dusty rose, deep canyon shadow
  GrandCanyon = c("#C1440E", "#D4704B", "#E8B88A", "#B8917A", "#4A3728"),
  
  # Yosemite - Granite cliffs, waterfalls, meadows, giant sequoias
  # Granite grey, waterfall white-blue, meadow green, pine, sunset on El Capitan
  Yosemite = c("#8B9A9D", "#B8D4E0", "#7CA860", "#3D5941", "#F0C987"),
  
  # Zion - Red rock canyons, Virgin River, desert flora
  # Navajo sandstone red, canyon shadow, river blue-green, sage, burnt sienna
  Zion = c("#D84A3B", "#6B4E3D", "#5C9EAD", "#9FA674", "#A0522D"),
  
  # Acadia - Coastal Maine, granite shores, forest, ocean
  # Ocean blue, granite grey, pink granite, forest green, lighthouse white
  Acadia = c("#2E5266", "#6E8898", "#D49A9A", "#4A7C59", "#E8DCC4"),
  
  # Rocky Mountain - Alpine tundra, wildflowers, snow-capped peaks
  # Sky blue, snow white, alpine wildflower purple, tundra green, mountain grey
  RockyMountain = c("#87CEEB", "#F0F8FF", "#9B6B9E", "#6B8F71", "#767B91"),
  
  # Smoky Mountains - Misty mountains, diverse forests, wildflowers
  # Blue mist, mountain green, rhododendron pink, autumn orange, deep forest
  Smokies = c("#748B9E", "#5F7C5D", "#E8A0BF", "#D4824B", "#2F3E2E"),
  
  # Glacier - Glacial lakes, mountains, Going-to-the-Sun Road
  # Glacial blue, mountain grey, wildflower magenta, rocky brown, forest green
  Glacier = c("#4DA6B3", "#8B8D8E", "#D64E93", "#846658", "#3B5441"),
  
  # Olympic - Rainforest, coast, mountains in one park
  # Moss green, ocean grey-blue, rain cloud, coastal rocks, fern
  Olympic = c("#6B8F4B", "#5C7E8C", "#9CA8B3", "#4A4A4A", "#A3D977"),
  
  # Arches - Red rock formations, desert, natural arches
  # Entrada sandstone red, desert sand, arch shadow, evening sky, oxidized rock
  Arches = c("#C74630", "#E8C39E", "#6B5D54", "#E89E6C", "#894937"),
  
  # Joshua Tree - Desert landscape, distinctive trees, night sky
  # Desert tan, Joshua tree green, rock formations, sunset pink, star-filled sky
  JoshuaTree = c("#D4B896", "#7A9B76", "#A68A64", "#E8B7A0", "#2C3E50"),
  
  # Everglades - Wetlands, sawgrass, wildlife
  # Sawgrass green, water brown-green, sunset orange, white ibis, mangrove
  Everglades = c("#7C9A5C", "#6B7C59", "#E89C5C", "#F0E8D4", "#4A5D4F"),
  
  # Bryce Canyon - Hoodoos (rock spires), unique erosion
  # Orange-red hoodoos, pink limestone, cream white, iron-stained red, shadow purple
  BryceCanyon = c("#E87451", "#F4A6A3", "#F8E5D0", "#B8634F", "#8B6F8B"),
  
  # Grand Teton - Jagged peaks, alpine lakes, meadows
  # Teton grey, Jackson Lake blue, wildflower yellow, aspen gold, evergreen
  GrandTeton = c("#8B9197", "#5890B5", "#F4D442", "#E8B44C", "#3F5651"),
  
  # Shenandoah - Blue Ridge Mountains, forests, waterfalls
  # Blue ridge, mountain laurel pink, autumn red, forest green, rock grey
  Shenandoah = c("#7B8FA3", "#E8B4C8", "#C74C3C", "#5A7D5F", "#6B6F72"),
  
  # Denali - Alaska's highest peak, tundra, wildlife
  # Snow white, tundra brown-green, sky blue, autumn tundra red, mountain shadow
  Denali = c("#F5F5F5", "#8B9467", "#A8C5DD", "#B84B4C", "#5D6874"),
  
  # Sequoia - Giant sequoia trees, Sierra Nevada
  # Sequoia bark red-brown, forest floor, bark texture, mountain granite, sky through canopy
  Sequoia = c("#8B4F39", "#6B5842", "#A67B5B", "#9CA3A8", "#87CEEB"),
  
  # Crater Lake - Deepest lake in US, intense blue
  # Deep crater lake blue, caldera rim grey, sky reflection, volcanic rock, snow
  CraterLake = c("#003F87", "#6B7C8C", "#87B5D6", "#54555A", "#E8F0F5"),
  
  # Death Valley - Extreme desert, salt flats, colorful badlands
  # Salt flat white, Artist's Palette pink, desert gold, volcanic black, oxidized green
  DeathValley = c("#F4F1E8", "#E8A4B8", "#D4A449", "#3A3A3A", "#8B9B76"),
  
  # Badlands - Layered rock formations, prairie
  # Yellow mounds, eroded pink-red, prairie grass, layered grey, sunset gold
  Badlands = c("#E8D4A0", "#D47C7C", "#A8B46F", "#8B8680", "#F0C668")
)

#' A US National Parks palette generator
#'
#' Color palettes inspired by the natural beauty and landscapes of 20 popular
#' US National Parks. Each palette captures the essence of its park through
#' carefully selected colors representing geology, flora, water, and sky.
#'
#' @param n Number of colors desired. All palettes have 5-7 colors.
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{Yellowstone}, \code{GrandCanyon}, \code{Yosemite}, \code{Zion},
#'   \code{Acadia}, \code{RockyMountain}, \code{Smokies}, \code{Glacier},
#'   \code{Olympic}, \code{Arches}, \code{JoshuaTree}, \code{Everglades},
#'   \code{BryceCanyon}, \code{GrandTeton}, \code{Shenandoah}, \code{Denali},
#'   \code{Sequoia}, \code{CraterLake}, \code{DeathValley}, \code{Badlands}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#' @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' natparks_palette("Yellowstone")
#' natparks_palette("GrandCanyon")
#' natparks_palette("Yosemite", 3)
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- natparks_palette(21, name = "CraterLake", type = "continuous")
natparks_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- natparks_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
