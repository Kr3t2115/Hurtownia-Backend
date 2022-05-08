from rest_framework import serializers
from .models import  klienci, produkty, zamowienia, faktura


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

class fakturaSerizlizer(serializers.ModelSerializer):
    class Meta:
        model = faktura
        fields = '__all__'
