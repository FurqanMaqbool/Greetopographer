# from django.contrib import admin
# from django.contrib.gis import OSMGeoAdmin
# from .models import PolygonFeature
# # Register your models here.


# from django.contrib.gis.geos import GEOSGeometry


# class PolygonFeatureAdmin(admin.OSMGeoAdmin):
#     # Set the default SRID for the admin panel
#     default_srid = 4326  # Use the same SRID as your data

#     # Transform the geometry to the correct SRID before displaying
#     def get_queryset(self, request):
#         qs = super().get_queryset(request)
#         for obj in qs:
#             if obj.geom.srid != self.default_srid:
#                 obj.geom.transform(self.default_srid)
#         return qs

# # Register the model with the custom admin class
# admin.site.register(PolygonFeature, PolygonFeatureAdmin)