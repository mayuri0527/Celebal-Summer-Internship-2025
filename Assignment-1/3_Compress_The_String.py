# Enter your code here. Read input from STDIN. Print output to STDOUT
from itertools import groupby
s = input()
compressed = [(len(list(g)), int(k)) for k, g in groupby(s)]
print(' '.join(str(tup) for tup in compressed))
