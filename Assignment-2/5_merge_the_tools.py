def merge_the_tools(string, k):
    # your code goes here
    n = len(string)
    for i in range(0, n, k):
        substring = string[i:i+k]
        seen = set()
        result = []
        for ch in substring:
            if ch not in seen:
                seen.add(ch)
                result.append(ch)
        print(''.join(result))
if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)