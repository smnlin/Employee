//
//  Manager.h
//  Employee
//
//  Created by Simon Lin on 2/7/13.
//  Copyright (c) 2013 Simon Lin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Employee.h"

@interface Manager : Employee
{
    NSMutableArray *reports;
}

@property (nonatomic,retain) NSMutableArray *reports;

-(void)addReport:(Employee *)inEmployee;

@end
