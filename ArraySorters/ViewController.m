//
//  ViewController.m
//  ArraySorters
//
//  Created by Andrew Rodgers on 2/25/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	NSMutableArray *testArray = [[NSMutableArray alloc] init];
	for (int i = 40; i >= 0; i--)
	{
		NSNumber *num = [NSNumber numberWithInt:i];
		[testArray addObject:num];
	}
	
	NSMutableArray *newArray = [testArray arrayByQuickSort];
	NSMutableArray *secondArray = [testArray arrayByHeapSort];
	
	for (NSNumber *num in newArray)
	{
		NSLog(@"Quicksort test: %@", num);
	}
	for (NSNumber *num in secondArray)
	{
		NSLog(@"Heapsort test: %@", num);
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
