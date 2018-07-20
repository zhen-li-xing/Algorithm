//
//  NormalSort.m
//  算法
//
//  Created by 李震 on 2018/7/20.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "NormalSort.h"

@implementation NormalSort

void selectSort(int *a, int length)
{
    for (int i =0; i < length - 1; i ++) {
        for (int j = i + 1; j < length; j ++) {
            if (a[i] > a[j]) {
                int temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }
}

/** MARK: -- 选择排序 C */
- (void)selectSortWithC
{
    int a[10] = {6,1,9,5,8,0,4,2,7,3};
    selectSort(a, 10);
    
    for (int i = 0; i < 10; i ++) {
        NSLog(@"%d",a[i]);
    }
}

/** MARK: -- 选择排序 OC */
- (void)selectSortWithOC
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:@[@6,@1,@9,@5,@8,@0,@4,@2,@7,@3]];
    
    for (int i = 0; i < array.count - 1; i ++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    
    NSLog(@"%@",array);
}


void bubbleSort(int *a, int length)
{
    for (int i = 0 ; i < length - 1; i ++) {
        for (int j = 0; j < length - i - 1; j ++) {
            if (a[j] > a[j+1]) {
//                int temp = a[j];
//                a[j] = a[j+1];
//                a[j+1] = temp;
                
                a[j] = a[j] + a[j+1];
                a[j+1]=a[j]-a[j+1];
                a[j]=a[j]-a[j+1];
            }
        }
    }
}

/** MARK: -- 冒泡排序  C */
- (void)bubbleSortWithC
{
    int a[10] = {6,1,9,5,8,0,4,2,7,3};
    bubbleSort(a, 10);
    
    for (int i = 0; i < 10; i ++) {
        NSLog(@"%d",a[i]);
    }
}

/** MARK: -- 冒泡排序  OC */
- (void)bubbleSortWithOC
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:@[@6,@1,@9,@5,@8,@0,@4,@2,@7,@3]];
    
    for (int i = 0; i < array.count - 1; i ++) {
        for (int j = 0; j < array.count - i - 1; j ++) {
            if ([array[j] integerValue] > [array[j+1] integerValue]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    
    NSLog(@"%@",array);
}

void insertSort(int *a, int length)
{
    for (int i = 1; i < length; i ++) {
        int j = i;
        int temp = a[i];
        while (j > 0 && temp > a[j-1]) {
            a[j] = a[j - 1];
            j--;
        }
        a[j] = temp;
    }
}

/** MARK: -- 插入排序 C */
- (void)insertSortWithC
{
    int a[10] = {13,5,89,20,40,18,43,46,34,120};
    insertSort(a, 10);
    for (int i = 0; i < 10; i ++) {
        NSLog(@"%d",a[i]);
    }
}

/** MARK: -- 插入排序 OC */
- (void)insertSortWithOC
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:@[@"13",@"5",@"89",@"20",@"40",@"18",@"120"]];
    
    
    for (int i = 1; i < array.count; i ++) {
        int j = i;
        
        NSString * temp = array[i];
        while (j > 0 && temp.integerValue < [array[j-1] integerValue]) {
            [array replaceObjectAtIndex:j withObject:array[j - 1]];
            j--;
        }
        [array replaceObjectAtIndex:j withObject:temp];
        
    }
    
    NSLog(@"%@",array);
    
}

/** MARK: -- 希尔排序  未理解 */
- (void)shellSort
{
    NSMutableArray * hillArr = [NSMutableArray arrayWithArray:@[@"13",@"5",@"89",@"20",@"40",@"18",@"120"]];
    
    int gap = hillArr.count/2.0;
    
    while (gap>=1) {
        
        for(int i = gap ;i< hillArr.count;i++){
            
            NSString * temp  = hillArr[i];
            int j = i;
            while (j>gap && [temp integerValue]<[hillArr[j-gap] integerValue]) {
                
                [hillArr replaceObjectAtIndex:j withObject:hillArr[j-gap]];
                j-=gap;
            }
            [hillArr replaceObjectAtIndex:j withObject:temp];
        }
        gap = gap/2;
    }
    
    NSLog(@"希尔排序最终结果---%@",hillArr);
}


@end
