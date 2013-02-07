constant-tracts
===============

Align Historical Chicago Census Tracts

# Extract Cook County, IL Tracts
    > ogr2ogr -where 'NHGISST="170" and NHGISCTY="0310"' cook_county_tract_2000.shp US_tract_2000.shp
