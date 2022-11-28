#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 13 07:08:17 2022

@author: randyllpandohie
"""


import os

from surprise import BaselineOnly, Dataset, Reader
from surprise.model_selection import cross_validate
from surprise import SVD

# path to dataset file
file_path = os.path.expanduser("ratings.csv")


# 'user item rating timestamp', separated by ',' characters.

reader = Reader(line_format="user item rating timestamp", sep=",", skip_lines=1)

data = Dataset.load_from_file(file_path, reader=reader)

# We can now use this dataset as we please, e.g. calling cross_validate

algo = SVD()

# Run 5-fold cross-validation and print results.
cross_validate(algo, data, measures=['RMSE', 'MAE'], cv=5, verbose=True)