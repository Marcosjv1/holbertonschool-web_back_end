#!/usr/bin/env python3
""" Módulo que contiene la función schools_by_topic """


def schools_by_topic(mongo_collection, topic):
    """ Devuelve la lista de escuelas que tienen un tema específico """
    return list(mongo_collection.find({"topics": topic}))
