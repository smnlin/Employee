//
//  Manager.m
//  Employee
//
//  Created by Simon Lin on 2/7/13.
//  Copyright (c) 2013 Simon Lin. All rights reserved.
//

#import "Manager.h"

@implementation Manager
@synthesize reports;

-(void)dealloc
{
    for (Employee *employee in reports)
    {
        [employee setManager:nil];
    }
    [self setReports:nil];
    [super dealloc];
}

-(id)init
{
    if (self = [super init])
    {
        [self setReports:[NSMutableArray array]];
    }
    return self;
}

-(void)addReport:(Employee *)inEmployee
{
    [reports addObject:inEmployee];
    [inEmployee setManager:self];
}

-(double)bonus
{
    return salary * 0.10;
}

@end
