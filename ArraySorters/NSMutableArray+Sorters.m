//
//  NSArray+Sorters.m
//  ArraySorters
//
//  Created by Andrew Rodgers on 2/25/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "NSMutableArray+Sorters.h"

@implementation NSMutableArray (Sorters)

-(NSMutableArray *)arrayByHeapSort
{	
	NSMutableArray *returnArray = [[NSMutableArray alloc] init];
	return returnArray;
}

-(NSMutableArray *)arrayByQuickSort
{
	if (self.count <= 1)
	{
		return self.mutableCopy;
	}
	
	NSMutableArray *returnArray = [[NSMutableArray alloc] init];
	NSMutableArray *lesserArray = [[NSMutableArray alloc] init];
	NSMutableArray *greaterArray = [[NSMutableArray alloc] init];
	
	NSInteger pivotIndex = (self.count / 2);
	NSNumber *pivot = self[pivotIndex];

	
	for (int i = 0; i < self.count; i++)
	{
		NSNumber *item = self[i];
		if (item.integerValue < pivot.integerValue)
		{
			[lesserArray addObject:item];
		}
		else if (item.integerValue > pivot.integerValue)
		{
			[greaterArray addObject:item];
		}
		else
		{
			[returnArray addObject:item];
		}
	}
	
	lesserArray = [lesserArray arrayByQuickSort];
	greaterArray = [greaterArray arrayByQuickSort];
	returnArray = [[lesserArray arrayByAddingObjectsFromArray:returnArray] arrayByAddingObjectsFromArray:greaterArray];
	
	return returnArray;
}

@end
