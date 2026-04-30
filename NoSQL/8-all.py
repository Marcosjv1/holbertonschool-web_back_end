#!/usr/bin/env python3
""" Módulo que contiene la función list_all """


def list_all(mongo_collection):
    """ Lista todos los documentos en una colección """
    return list(mongo_collection.find())
