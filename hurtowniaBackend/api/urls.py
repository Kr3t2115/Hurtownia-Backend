from django.urls import path
from . import views
urlpatterns = [
    path('produktyAll', views.getAllProdukty),
    path('klienciAll', views.getAllKlienci),
    path('zamowieniaAll',views.getAllZamowienia)
]