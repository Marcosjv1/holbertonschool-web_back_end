#!/usr/bin/env python3
""" Módulo para proporcionar estadísticas sobre logs de Nginx en MongoDB """
from pymongo import MongoClient


def log_stats():
    """ Proporciona estadísticas sobre los logs de Nginx """
    client = MongoClient('mongodb://127.0.0.1:27017')
    collection = client.logs.nginx

    n_logs = collection.count_documents({})
    print("{} logs".format(n_logs))

    print("Methods:")
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    for method in methods:
        count = collection.count_documents({"method": method})
        print("\tmethod {}: {}".format(method, count))

    status_check = collection.count_documents({"method": "GET", "path": "/status"})
    print("{} status check".format(status_check))


if __name__ == "__main__":
    log_stats()
