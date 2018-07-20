//
//  ViewController.m
//  算法
//
//  Created by 李震 on 2018/7/19.
//  Copyright © 2018年 李震. All rights reserved.
//

#import "ViewController.h"
#import "QuickSort.h"
#import "NormalSort.h"
#import "Bisearch.h"

@interface ViewController ()

@end

@implementation ViewController



/** MARK: -- 快排 */
- (void)quick
{
    QuickSort * quick = [QuickSort new];
    [quick quickSortWithC];

    [quick quickSortWithOC];
}

/** MARK: -- 选择排序 */
- (void)select
{
    NormalSort * sort = [NormalSort new];
    
    [sort selectSortWithC];
    
    [sort selectSortWithOC];
}

/** MARK: -- 冒泡排序 */
- (void)bubbleSort
{
    NormalSort * sort = [NormalSort new];
    
    [sort bubbleSortWithOC];
    
    [sort bubbleSortWithC];
}

/** MARK: -- 二分查找 */
- (void)bisearch
{
    Bisearch * search = [Bisearch new];
    
    [search bisearchWithC];
    
    [search bisearchWithOC];
}

/** MARK: -- 插入排序 */
- (void)insertSort
{
    NormalSort * sort = [NormalSort new];
    
    [sort insertSortWithC];
    
    [sort insertSortWithOC];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self insertSort];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
