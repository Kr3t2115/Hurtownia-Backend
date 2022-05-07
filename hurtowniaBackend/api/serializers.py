from rest_framework import serializers
from .models import  klienci, produkty, zamowienia


class klienciSerializer(serializers.ModelSerializer):
    class Meta:
        model = klienci
        fields = '__all__'

class produktySerializer(serializers.ModelSerializer):
    class Meta:
        model = produkty
        fields = '__all__'

class zamowieniaSerializer(serializers.ModelSerializer):
    class Meta:
        model = zamowienia
        fields = '__all__'