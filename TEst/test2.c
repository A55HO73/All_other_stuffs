#include<stdio.h>
#include<stdlib.h>

int* luckyNumbers (int** matrix, int matrixSize, int* matrixColSize, int* returnSize){
    int i, j=0, m, n, flag=1, lucky=0, *luckys, *colUsed;
    luckys = (int*)calloc(matrixSize, sizeof(int));
    colUsed = (int*)calloc(*matrixColSize, sizeof(int));
    for(i=0;i<matrixSize;i++)
        for(j=0;j<*matrixColSize;j++){
            if(colUsed[j]) break;
            flag=1;
            for(m=0;m<matrixSize;m++)
                if(matrix[i][j]<matrix[m][j])
                    flag=0;
            for(m=0;m<*matrixColSize;m++)
                if(matrix[i][j]>matrix[i][m])
                    flag=0;
            if(flag) {
                luckys[lucky++]=matrix[i][j];
                colUsed[j]=1;
                break;
            }
        }
    *returnSize = lucky;
    return luckys;
}
