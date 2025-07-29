from collections import Counter

def calculate_earnings():
    n = int(input())
    shoe_sizes = list(map(int, input().split()))
    shoe_counts = Counter(shoe_sizes)
    
    m = int(input())
    total_money = 0
    
    for _ in range(m):
        size, price = map(int, input().split())
        if shoe_counts[size] > 0:
            total_money += price
            shoe_counts[size] -= 1
            
    print(total_money)

if __name__ == '__main__':
    calculate_earnings()
