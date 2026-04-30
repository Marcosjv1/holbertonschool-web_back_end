#!/usr/bin/env python3
""" Módulo que contiene la función update_topics """


def update_topics(mongo_collection, name, topics):
    """ Cambia todos los temas de un documento de la escuela según el nombre """
    mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
