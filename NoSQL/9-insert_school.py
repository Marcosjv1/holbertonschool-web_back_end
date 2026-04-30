#!/usr/bin/env python3
""" Módulo que contiene la función insert_school """


def insert_school(mongo_collection, **kwargs):
    """ Inserta un nuevo documento en una colección basado en kwargs """
    new_document = mongo_collection.insert_one(kwargs)
    return new_document.inserted_id
