//
//  NSArray+Sorters.h
//  ArraySorters
//
//  Created by Andrew Rodgers on 2/25/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Sorters)

-(NSArray *)arrayByHeapSort;
-(NSArray *)arrayByQuickSort;

@end
