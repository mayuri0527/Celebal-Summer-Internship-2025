for _ in range(int(input())):
    try:
        a, b = input().split()
        a = int(a)
        b = int(b)
        print(a // b)
    except ZeroDivisionError as e:
        print("Error Code:", e)
    except ValueError as e:
        print("Error Code:", e)
