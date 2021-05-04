# -*- coding: utf-8 -*-
"""
Created on Tue Mar  2 22:20:15 2021

@author: DUC-PC
"""

a = int(input("Nhập số a="))
b = int(input("Nhập số b="))


def uscln(a, b):
    while (a != b):
        if (a > b):
            a -= b
        else:
            b -= a
    uscln = a
    return uscln


print("Ước chung lớn nhất của a và b là:",uscln(a, b))



