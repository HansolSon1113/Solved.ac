//1598
/*
#include <stdio.h>  //stdio.h 헤더 파일
#include <stdlib.h>

typedef struct{
    int big;
    int small;
} nums;

void printForDebug(void){
    for(int x = 0; x < 4; x++){
        for(int y = 0; y < 11; y++){
            printf("%d\t", x+1+4*y);
        }
        printf("\n");
    }
}

void calDist(nums num){
    int firstX = 0, firstY = 0, secondX = 0, secondY = 0, xDist, yDist;
    printf("__startOfmakeArray__\n");
    for(int x = 0; x < num.big/4 + 1; x++){
        for(int y = 0; y < 4; y++){
            int result = 4*x+y+1;
            if(result == num.big){
                printf("First Value Found %d %d from %d\n", x, y, result);
                firstX = x;
                firstY = y;
            }
            if(result == num.small){
                printf("Second Value Found %d %d from %d\n", x, y, result);
                secondX = x;
                secondY = y;
            }
            printf("%d, ", result);
        }
        printf("\n");
    }
    
    printf("%d | %d\n__endOfmakeArray__\n", num.big, num.small);
    
    printf("FV: %d & %d || SV: %d & %d\n", firstX, firstY, secondX, secondY);
    
    xDist = abs(firstX - secondX);
    yDist = abs(firstY - secondY);
    
    printf("Distance: %d\n", xDist + yDist);
    
}

nums getNum(void){
    int startNum, targetNum, bigNum, smallNum;
    scanf("%d %d", &startNum, &targetNum);

    if(startNum >= targetNum){
        bigNum = startNum;
        smallNum = targetNum;
    }
    else{
        bigNum = targetNum;
        smallNum = startNum;
    }
    
    nums num = {.big = bigNum, .small = smallNum};
    return num;
}

int main(void){ //main 함수
    printForDebug();
    
    nums num = getNum();
    
    calDist(num);
    
    return 0;
}
*/

//2457
/*
#include <stdio.h>

int main(void){
    int nums[5], result = 0;
    
    scanf("%d %d %d %d %d", &nums[0], &nums[1], &nums[2], &nums[3], &nums[4]);
    
    for(int i = 0; i < 5; i++){
        result += nums[i] * nums[i];
    }
    
    result %= 10;
    
    printf("%d", result);
    
    return 0;
}
*/

//2749
/*
#include <stdio.h>

int num;

int main(void){
    scanf("%d", &num);
    
    for(int i = 1; i <= 9; i++){
        printf("%d * %d = %d\n", num, i, num*i);
    }
    
    return 0;
}
*/

//2741
/*
#include <stdio.h>

int main(void){
    long int num;
    scanf("%ld", &num);
    
    for(long int i = 1; i <= num; i++){
        printf("%ld\n", i);
    }
    
    return 0;
}
*/

//2753
/*
#include <stdio.h>

int main(void){
    int year;
    scanf("%d", &year);
    
    printf("%d",((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)?1:0);
    
    return 0;
}
*/

//3003
/*
#include <stdio.h>

int main(void){
    int king, queen, rook, bishop, knight, pawn;
    const int orKing = 1, orQueen = 1, orRook = 2, orBishop = 2, orKnight = 2, orPawn = 8;
    
    scanf("%d %d %d %d %d %d", &king, &queen, &rook, &bishop, &knight, &pawn);
    
    printf("%d %d %d %d %d %d\n", orKing - king, orQueen - queen, orRook - rook, orBishop - bishop, orKnight - knight, orPawn - pawn);
    
    return 0;
}
*/

//3733
/*
#include <stdio.h>

int main(void){
    int N = 0, S = 0;
    
    while(scanf("%d %d", &N, &S) == 2){ //EOF returns error?
        printf("%d\n", S/(N+1));
    }
    return 0;
}
*/

//4101
/*
#include <stdio.h>

int main(void){
    long int num1 = -1, num2 = -1;
    
    while(num1 && num2){
        scanf("%ld %ld", &num1, &num2);
        if(num1!=0 && num2!=0){
            (num1>num2)?printf("Yes\n"):printf("No\n");
        }
    }
    
    return 0;
}
*/

//5341
/*
#include <stdio.h>

int main(void){
    int num = -1, cnt;
    while(num){
        cnt = 0;
        scanf("%d", &num);
        if(num!=0){
            for(int i = num; i >= 0; i--){
                cnt+=i;
            }
            
            printf("%d\n", cnt);
        }
    }
    return 0;
}
*/

//5522

/*
#include <stdio.h>

int main(){
    int result=0;
    
    for(int i = 0; i < 4; i++){
        int score;
        scanf("%d", &score);
        
        result+=score;
    }
    
    printf("%d", result);
    return 0;
}
*/
