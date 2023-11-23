## Sentinel-2 data (10m, ESA):
https://dataspace.copernicus.eu/explore-data/data-collections/sentinel-data/sentinel-2

# Sentinel-2 provides high-resolution images in the visible and infrared wavelengths,
# to monitor vegetation, soil and water cover, inland waterways and coastal areas. 
# Spatial resolution: 10m, 20m, and 60m, depending on the wavelength (that is, only
# details bigger than 10m, 20m, and 60m can be seen). Revisit time: 
# maximum 5 days to revisit the same area, using both satellites. Data availability: 
# Since June 2015. Full global coverage since March 2017. Common usage: Land-cover maps, 
# land-change detection maps, vegetation monitoring, monitoring of burnt areas.

# Per scaricare immagini serve Login
# Cliccare su 'Explore Sentinel-2 data'
# Selezionare dalla mappa l'area che voglio analizzare
# Andare su 'Search' e selezionare 'Sentinel-2' (o quello che mi interessa)
# Selezionare il periodo di osservazione e scegliere l'immagine che voglio

# S2A e S2B sono le due diverse costellazioni 'Sentinel' che operano rispettivamente
# dal 2015 e dal 2017

# Level 1C data are data of sufficient quality for most investigations, where all 
# image corrections were done except for the atmospheric correction. Data are available
# globally since June 2015 onwards.
# Level 2A data are high quality data where the effects of the atmosphere on the light 
# being reflected off of the surface of the Earth and reaching the sensor are excluded. 
# Data are available globally since March 2017.

# Orbit Number: The Relative Orbit Number is the number of full orbits (between sucessive
# ascending node crossings through the Equator) since the relative orbit 1 until the end of
# a cycle. The relative orbit 1 is the orbit whose ascending node crossing is closest to
# the Greenwich Meridian. Sentinel-2 is in a sun-synchronous orbit with a 10-day repeat 
# cycle (5-days with both satellites) and 143 orbits per cycle.

# MANCA: MSI, Auxiliary data file, 

# SWIR
# Short wave infrared composite (SWIR) Short wave infrared (SWIR) measurements can help
# scientists estimate how much water is present in plants and soil, as water absorbs SWIR 
# wavelengths. Short wave infrared bands (a band is a region of the electromagnetic 
# spectrum; a satellite sensor can image Earth in different bands) are also useful for
# distinguishing between cloud types (water clouds versus ice clouds), snow and ice, all
# of which appear white in visible light. In this composite vegetation appears in shades 
# of green, soils and built-up areas are in various shades of brown, and water appears black.
# Newly burned land reflects strongly in SWIR bands, making them valuable for mapping fire 
# damages. Each rock type reflects shortwave infrared light differently, making it possible 
# to map out geology by comparing reflected SWIR light.

# NWIR
Normalized Difference Water Index (NDWI) The normalized difference water index is most 
# appropriate for water body mapping. Values of water bodies are larger than 0.5. Vegetation 
# has smaller values. Built-up features have positive values between zero and 0.2.

# NDMI 
# The normalized difference moisture Index is used to determine vegetation water content
# and monitor droughts. The value range of the NDMI is -1 to 1. Negative values of NDMI 
# (values approaching -1) correspond to barren soil. Values around zero (-0.2 to 0.4) generally
# correspond to water stress. High, positive values represent high canopy without water stress 
# (approximately 0.4 to 1).

# Scene classification 
# Scene classification was developed to distinguish between cloudy pixels, clear pixels and
# water pixels of Sentinel-2 data and is a result of ESA's Scene classification algorithm. 
# Twelve different classifications are provided including classes of clouds, vegetation, 
# soils/desert, water and snow. It does not constitute a land cover classification map in a strict sense.























