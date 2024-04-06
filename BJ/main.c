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
    printf("__startOfmakeArray__\n");
    int result[num.big/4][4];
    for(int x = 0; x < num.big/4 + 1; x++){
        for(int y = 0; y < 4; y++){
            result[x][y] = 4*x+y+1;
            printf("%d, ", result[x][y]);
        }
        printf("\n");
    }
    
    printf("%d | %d\n__endOfmakeArray__\n", num.big, num.small);

    int firstX = 0, firstY = 0, secondX = 0, secondY = 0, xDist, yDist;
    
    for(int x = 0; x <= num.big/4; x++){
        for(int y = 0; y < 4; y++){
            if(result[x][y] == num.big){
                printf("First Value Found %d %d from %d\n", x, y, result[x][y]);
                firstX = x;
                firstY = y;
            }
            if(result[x][y] == num.small){
                printf("Second Value Found %d %d from %d\n", x, y, result[x][y]);
                secondX = x;
                secondY = y;
            }
        }
    }
    
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
