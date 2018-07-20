//
//  NormalSort.h
//  算法
//
//  Created by 李震 on 2018/7/20.
//  Copyright © 2018年 李震. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NormalSort : NSObject

/** MARK: -- 选择排序 C */
- (void)selectSortWithC;
/** MARK: -- 选择排序 OC */
- (void)selectSortWithOC;

/** MARK: -- 冒泡排序  C */
- (void)bubbleSortWithC;
/** MARK: -- 冒泡排序 OC */
- (void)bubbleSortWithOC;

/** MARK: -- 插入排序 C */
- (void)insertSortWithC;
/** MARK: -- 插入排序 */
- (void)insertSortWithOC;

@end
