//
//  Employee.m
//  Employee
//
//  Created by Simon Lin on 1/23/13.
//  Copyright (c) 2013 Simon Lin. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize firstName;
@synthesize lastName;
@synthesize birthDate;
@synthesize dateOfEmployment;
@synthesize manager;
@synthesize ssn;
@synthesize salary;
@dynamic age;

-(void)dealloc
{
    [self setFirstName:nil];
    [self setLastName:nil];
    [self setBirthDate:nil];
    [self setDateOfEmployment:nil];
    [self setSsn:nil];
    [self setManager:nil];
    
    [super dealloc];
}

-(id)init
{
    if (self = [super init])
    {
        
    }
    return self;
}



@end
