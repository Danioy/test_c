"""
"""

from ctypes import *

lib = CDLL("./main.so")
lib.connect()

def test_add():
    result = lib.ht_add(20, 30)
    expected = 50
    assert result == expected
