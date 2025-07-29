n = int(input())
s = list(map(int, input().split()))
s = list(dict.fromkeys(s))  
N = int(input())

for _ in range(N):
    cmd = input().strip().split()
    if cmd[0] == "pop":
        if s:
            s.pop(0)
    elif cmd[0] == "remove":
        x = int(cmd[1])
        if x in s:
            s.remove(x)
    elif cmd[0] == "discard":
        x = int(cmd[1])
        if x in s:
            s.remove(x)

print(sum(s))
