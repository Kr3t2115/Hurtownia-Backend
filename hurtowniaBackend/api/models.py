from django.db import models

# Create your models here.


class klienci(models.Model):
    id_klienta = models.AutoField(primary_key=True)
    nazwa_klienta = models.CharField(max_length=255)
    nip_klienta  = models.CharField(max_length=10)
    miejscowosc_klienta = models.CharField(max_length=255)

    class Meta:
        ordering = ['id_klienta']

    def __int__(self):
        return self.id_klienta

class produkty(models.Model):
    id_produktu = models.AutoField(primary_key=True)
    nazwa_produktu = models.CharField(max_length=255)
    cena_netto_za_sztuke = models.FloatField()

    class Meta:
        ordering = ['id_produktu']

    def __int__(self):
        return self.id_produktu


class zamowienia(models.Model):
    id = models.AutoField(primary_key=True)
    id_klienta = models.ManyToManyField(klienci )
    id_produktu = models.ManyToManyField(produkty)
    ilosc = models.IntegerField()