## Sentinel-2 data (10m, ESA):
# https://dataspace.copernicus.eu/explore-data/data-collections/sentinel-data/sentinel-2
# Per scaricare immagini serve Login
# 'Explore Sentinel-2 data'



## INFORMAZIONI GENERALI

# Sentinel-2 provides high-resolution images in the visible and infrared wavelengths,
# to monitor vegetation, soil and water cover, inland waterways and coastal areas. 
# Spatial resolution: 10m, 20m, and 60m, depending on the wavelength (that is, only
# details bigger than 10m, 20m, and 60m can be seen). Revisit time: 
# maximum 5 days to revisit the same area, using both satellites. Data availability: 
# Since June 2015. Full global coverage since March 2017. Common usage: Land-cover maps, 
# land-change detection maps, vegetation monitoring, monitoring of burnt areas.

# Per vedere le diverse Bande con le relative risoluzioni spaziali
https://sentinels.copernicus.eu/web/sentinel/user-guides/sentinel-2-msi/resolutions/spatial

# S2A e S2B sono le due diverse costellazioni 'Sentinel' che operano rispettivamente
# dal 2015 e dal 2017

# Level 1C data are data of sufficient quality for most investigations, where all 
# image corrections were done except for the atmospheric correction. Data are available
# globally since June 2015 onwards.
# Level 2A data are high quality data where the effects of the atmosphere on the light 
# being reflected off of the surface of the Earth and reaching the sensor are excluded. 
# Data are available globally since March 2017.

# Orbit Number--> The Relative Orbit Number is the number of full orbits (between sucessive
# ascending node crossings through the Equator) since the relative orbit 1 until the end of
# a cycle. The relative orbit 1 is the orbit whose ascending node crossing is closest to
# the Greenwich Meridian. Sentinel-2 is in a sun-synchronous orbit with a 10-day repeat 
# cycle (5-days with both satellites) and 143 orbits per cycle.

# MSI--> The MultiSpectral Instrument uses a push-broom concept. A push-broom sensor works
# by collecting rows of image data across the orbital swath and utilises the forward motion 
# of the spacecraft along the path of the orbit to provide new rows for acquisition. 
# The average period of observation over land and coastal areas is approximately 17 minutes 
# and the maximum period of observation is 32 minutes.



### DIFFERENT BAND COMPOSITIONS

# Falase Color--> A false color composite uses at least one non-visible wavelength to image Earth.
# The false colour composite is most commonly used to assess plant density and health, since plants
# reflect near infrared and green light, while they absorb red. Cities and exposed ground are grey
# or tan, and water appears blue or black.

# False Color Urban composite--> This composite is used to visualize urbanized areas more clearly. 
# Vegetation is visible in shades of green, while urbanized areas are represented by white, grey, or purple. 
# Soils, sand, and minerals are shown in a variety of colors. Snow and ice appear as dark blue, and
# water as black or blue. Flooded areas are very dark blue and almost black. The composite is useful 
# for detecting wildfires and calderas of volcanoes, as they are displayed in shades of red and yellow.

# NDMI--> The normalized difference moisture Index is used to determine vegetation water content
# and monitor droughts. The value range of the NDMI is -1 to 1. Negative values of NDMI 
# (values approaching -1) correspond to barren soil. Values around zero (-0.2 to 0.4) generally
# correspond to water stress. High, positive values represent high canopy without water stress 
# (approximately 0.4 to 1).

# SWIR--> Short wave infrared measurements can help
# scientists estimate how much water is present in plants and soil, as water absorbs SWIR 
# wavelengths. Short wave infrared bands (a band is a region of the electromagnetic 
# spectrum; a satellite sensor can image Earth in different bands) are also useful for
# distinguishing between cloud types (water clouds versus ice clouds), snow and ice, all
# of which appear white in visible light. In this composite vegetation appears in shades 
# of green, soils and built-up areas are in various shades of brown, and water appears black.
# Newly burned land reflects strongly in SWIR bands, making them valuable for mapping fire 
# damages. Each rock type reflects shortwave infrared light differently, making it possible 
# to map out geology by comparing reflected SWIR light.

# NWIR--> The normalized difference water index is most 
# appropriate for water body mapping. Values of water bodies are larger than 0.5. Vegetation 
# has smaller values. Built-up features have positive values between zero and 0.2.

# NDSI-->The Sentinel-2 normalised difference snow index can be used to differentiate between
# cloud and snow cover as snow absorbs in the short-wave infrared light, but reflects the 
# visible light, whereas cloud is generally reflective in both wavelengths. Snow cover is represented
# in bright vivid blue.






















