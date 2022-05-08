from django.db import models

# Create your models here.


class klienci(models.Model):
    id_klienta = models.AutoField(primary_key=True)
    nazwa_klienta = models.CharField(max_length=255)
    nip_klienta  = models.CharField(max_length=10)
    miejscowosc_klienta = models.CharField(max_length=255)



class produkty(models.Model):
    id_produktu = models.AutoField(primary_key=True)
    nazwa_produktu = models.CharField(max_length=255)
    cena_netto_za_sztuke = models.FloatField()

class zamowienia(models.Model):
    id = models.AutoField(primary_key=True)
    id_klienta = models.IntegerField()
    id_produktu = models.IntegerField()
    ilosc = models.IntegerField()

class faktura(models.Model):
    id = models.AutoField(primary_key=True)
    nazwa_klienta = models.CharField(max_length=255)
    nip_klienta  = models.CharField(max_length=10)
    miejscowosc_klienta = models.CharField(max_length=255)
    nazwa_produktu = models.CharField(max_length=255)
    cena_netto_za_sztuke = models.FloatField()
    cena_netto = models.FloatField()
    podatek_vat = models.FloatField()
    cena_brutto = models.FloatField()




