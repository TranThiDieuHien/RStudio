# -*- coding: utf-8 -*-
"""
Created on Tue Mar  2 22:03:30 2021

@author: Trần Thị Diệu Hiền
"""

n = int(input("Nhập số đĩa cần chuyển:"))

def Thap_HN(n , cot_dau, cot_cuoi, trung_gian): 
    if n==1: 
        print("Di chuyển đĩa 1 từ ",cot_dau,"dến ",cot_cuoi) 
        return
    Thap_HN(n-1, cot_dau, trung_gian, cot_cuoi) 
    print("Di chuyển đĩa",n,"từ ",cot_dau,"đến ",cot_cuoi) 
    Thap_HN(n-1, trung_gian, cot_cuoi, cot_dau) 
           

Thap_HN(n,'C1','C3','C2')  