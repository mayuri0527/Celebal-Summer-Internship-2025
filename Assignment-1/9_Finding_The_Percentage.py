if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for i in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    
average = sum(student_marks[query_name])/len(student_marks[query_name])

print(f"{average:.2f}")
