//
//  Bisearch.m
//  算法
//
//  Created by 李震 on 2018/7/20.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "Bisearch.h"

@implementation Bisearch


int bisearch(int *a, int min, int max, int key)
{
    int mid;
    while (min <= max) {
        mid = (min + max) / 2;
        if (a[mid] == key) {
            return min;
        }else if (a[mid] > key)
            min = mid + 1;
        else
            max = mid - 1;
    }
    
    return -1;
}

/** MARK: -- 二分查找 */
- (void)bisearchWithC
{
    int a[10] = {9,8,7,6,5,4,3,2,1,0};
    int index = bisearch(a, 0, 9, 6);
    NSLog(@"%d",index);
}

/** MARK: -- 二分查找 */
- (void)bisearchWithOC
{
    NSArray * array = @[@0,@1,@2,@3,@4,@5,@6,@7,@8,@9];
    
    NSLog(@"%ld",[self bisearchWith:array key:5 left:0 right:9]);
}

- (NSInteger)bisearchWith:(NSArray *)array key:(NSInteger)key left:(NSInteger)left right:(NSInteger)right
{
    NSInteger mid;
    while (left <= right) {
        mid = (left+right)/2;
        
        if ([array[mid] integerValue] == key) {
            return mid;
        } else if ([array[mid] integerValue] < key) {
            left = mid+1;
        } else {
            right = mid-1;
        }
    }
    
    return -1;
}

@end
