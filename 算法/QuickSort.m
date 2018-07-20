//
//  QuickSort.m
//  算法
//
//  Created by 李震 on 2018/7/20.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

void fast(int a[], int left, int right)
{
    int i,j,base,temp;
    if (left > right) {
        return;
    }
    
    base = a[left]; //保存基数
    i = left;
    j = right;
    
    while (i < j) {
        
        while (a[j] >= base && i < j) {
            j --;
        }
        while (a[i] <= base && i < j) {
            i ++;
        }
        
        if (i < j) {
            temp = a[i];
            a[i] = a[j];
            a[j] = temp;
        }
    }
    
    a[left]=a[i];
    a[i]=base;
    
    fast(a, left, i - 1);
    fast(a, i + 1, right);
    
    
}

/** MARK: -- 快排 C语言 */
- (void)quickSortWithC
{
    int a[10] = {6,1,9,5,8,0,4,2,7,3};
    fast(a, 0, 9);
    for (int s = 0; s <= 9; s ++) {
        NSLog(@"%d",a[s]);
    }
}

/** MARK: -- 快排 OC */
- (void)quickSortWithOC
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:@[@6,@1,@9,@5,@8,@0,@4,@2,@7,@3]];
    
    [self quickSortWith:array leftIndex:0 rightIndex:array.count-1];
    
    NSLog(@"%@",array);
}

- (void)quickSortWith:(NSMutableArray *)array leftIndex:(NSInteger)left rightIndex:(NSInteger)right
{
    if (left > right) {
        return;
    }
    NSInteger i = left,j = right;
    NSNumber * base = array[left];
    
    while (i < j) {
        while ([array[j] integerValue] >= base.integerValue && i < j) {
            j --;
        }
        while ([array[i] integerValue] <= base.integerValue && i < j) {
            i ++;
        }
        
        if (i < j) {
            [array exchangeObjectAtIndex:i withObjectAtIndex:j];
        }
        
    }
    
    [array exchangeObjectAtIndex:left withObjectAtIndex:i];
    
    [self quickSortWith:array leftIndex:left rightIndex:i-1];
    [self quickSortWith:array leftIndex:i+1 rightIndex:right];
}

@end
