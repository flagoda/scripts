import random

key = []
for _ in range(8):
    key.append(str(random.choice(range(11, 720885, 11))).zfill(6))
key = "-".join(key)

print(key)
