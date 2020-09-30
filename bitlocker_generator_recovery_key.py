import random
"""
Generate random Bitlocker recovery keys
Constraints:
-48 numbers (8 groups of 6 numbers)
Each groups of 6 numbers :
-Divisible by 11
-Lower than 720896
"""

key = []
for _ in range(8):
    key.append(str(random.choice(range(11, 720885, 11))).zfill(6))
key = "-".join(key)

print(key)
