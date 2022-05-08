from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view

from .models import produkty,klienci, zamowienia, faktura
from .serializers import produktySerializer, klienciSerializer, zamowieniaSerializer, fakturaSerizlizer


import requests

@api_view(['GET'])
def getAllKlienci(request):
    model = klienci.objects.all()
    serializer = klienciSerializer(model, many=True)
    return Response(serializer.data)

@api_view(['POST'])
def postAllKlienci(request):
    serializer = klienciSerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

@api_view(['GET'])
def getAllProdukty(request):
    model = produkty.objects.all()
    serializer = produktySerializer(model, many=True)
    return Response(serializer.data)

@api_view(['POST'])
def postAllProdukty(request):
    serializer = produktySerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

@api_view(['GET'])
def getAllZamowienia(request):
    model = zamowienia.objects.all()
    serializer = zamowieniaSerializer(model, many=True)
    return Response(serializer.data)

@api_view(['POST'])
def postAllZamowienia(request):
    serializer = zamowieniaSerializer(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)


@api_view(['GET'])
def getDataFaktura(request):
    model = faktura.objects.all()
    serializer = fakturaSerizlizer(model, many=True)
    return Response(serializer.data)
