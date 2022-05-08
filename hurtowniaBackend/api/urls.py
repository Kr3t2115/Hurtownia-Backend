from django.urls import path
from . import views
urlpatterns = [
    path('produktyAll', views.getAllProdukty),
    path('produktyPost', views.postAllProdukty),
    path('klienciAll', views.getAllKlienci),
    path('klienciPost', views.postAllKlienci),
    path('zamowieniaAll',views.getAllZamowienia),
    path('zamowieniaPost',views.postAllZamowienia),
    path('faktura', views.getDataFaktura),

]