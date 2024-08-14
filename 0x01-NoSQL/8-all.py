#!/usr/bin/env python3
"""Task 8 module"""


def list_all(mongo_collection):
    """List's all documents in a collection"""
    return [doc for doc in mongo_collection.find()]
