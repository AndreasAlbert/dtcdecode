#!/usr/bin/env python

import numpy as np
from tabulate import tabulate


def ok(text):
    parts = text.split('/')
    assert(len(parts)==2)
    return parts[0]==parts[1]


data = np.loadtxt('test.txt', dtype=str)

headers = [
    'Encoded row',
    'READY',
    'STATE',
    'POS',
    '# Bits',
    '# Bits OK?',
    '#Hits',
    '#Hits OK?'
]
table = []
for l in data:
    line = [
        l[0],
        l[1],
        l[2],
        l[3],
        l[4],
        ok(l[4]),
        l[5],
        ok(l[5])
    ]

    table.append(line)

text = tabulate(table,headers=headers)
with open('test_pretty.txt','w') as f:
    f.write(text)
    f.write('\n')
