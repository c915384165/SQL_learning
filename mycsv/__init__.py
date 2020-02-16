#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__all__ = ["csv_interface"]

import csv

def csv_interface(filename):
    ## 读取csv文件，返回一个列表，每行为一个子列表
    ls = []
    with open(filename,'r', newline='') as fo:
        reader = csv.reader(fo, dialect='excel', delimiter=',')
        for row in reader:
            ls.append(row)
    return ls
