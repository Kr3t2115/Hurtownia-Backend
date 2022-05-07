from django.contrib import admin
from .models import produkty, klienci,zamowienia

# Register your models here.

admin.site.register(produkty)
admin.site.register(klienci)
admin.site.register(zamowienia)
