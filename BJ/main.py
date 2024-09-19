#엄청난 부자2(Python3)
"""
num = input().split(" ")
n = 10**1000
m = int(num[1])

print("%d\n%d" %(n//m, n%m))
"""

#2338
"""
num1 = int(input())
num2 = int(input())

print(f"{num1+num2}\n{num1-num2}\n{num1*num2}")
"""

#1152
"""
sum = 0
str = input().strip().split(" ")

for a in str:
    if(a != " " and a != ""):
        sum += 1
        
print(sum)
"""

#1018
N, M = map(int, input().split())

board = []
boards_cut = []

for _ in range(N):
    board.append(input())

def cut():
    for i in range(N-7):
        for j in range(M-7):
            board_temp = []
            for x in range(8):
                board_temp_internal = []
                for y in range(8):
                    board_temp_internal.append(board[i+x][j+y])
                board_temp.append(board_temp_internal)
            boards_cut.append(board_temp)
    
def check_white():
    cnt = 0
    col = 1
    res = []
    for board in boards_cut:
        for i in range(8):
            for j in range(8):
                if((board[i][j] == 'W' and col == -1) or (board[i][j] == 'B' and col == 1)):
                    cnt += 1
                col *= -1
            col *= -1
        res.append(cnt)
        cnt = 0
        col = 1

    low = res[0]
    for i in res:
        if(i < low):
            low = i
    return low

def check_black():
    cnt = 0
    col = -1
    res = []
    for board in boards_cut:
        for i in range(8):
            for j in range(8):
                if((board[i][j] == 'B' and col == 1) or (board[i][j] == 'W' and col == -1)):
                    cnt += 1
                col *= -1
            col *= -1
        res.append(cnt)
        cnt = 0
        col = -1

    low = res[0]
    for i in res:
        if(i < low):
            low = i
    return low

def check():
    w_res = check_white()
    b_res = check_black()
    if(w_res > b_res):
        return b_res
    else:
        return w_res
    
cut()

print(check())
