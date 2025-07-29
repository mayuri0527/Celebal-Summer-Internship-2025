from itertools import combinations
n = int(input())
letters = input().split()
k = int(input())

all_combinations = list(combinations(letters,k))
count_with_a = sum(1 for comb in all_combinations if 'a' in comb)
probability = count_with_a / len(all_combinations)
print(f"{probability:.4f}")
