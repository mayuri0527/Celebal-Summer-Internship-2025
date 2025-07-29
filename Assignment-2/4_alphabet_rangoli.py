def print_rangoli(size):
    import string
    alpha = string.ascii_lowercase

    width = size * 4 - 3
    lines = []

    for i in range(size):
        left_part = alpha[size-1:size-1-i:-1]  
        right_part = alpha[size-1-i:size]   
        row_letters = left_part + right_part

        line = '-'.join(row_letters)
        lines.append(line.center(width, '-'))

    for line in lines:
        print(line)
    for line in lines[-2::-1]:
        print(line)

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
