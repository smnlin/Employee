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

-(id)initWithFirstName:(NSString *)inFirstName
              lastName:(NSString *)inLastName
             birthDate:(NSDate *)inBirthDate
                   ssn:(NSString *)inSSN
{
    if (self = [self init])
    {
        [self setFirstName:inFirstName];
        [self setLastName:inLastName];
        [self setBirthDate:inBirthDate];
        [self setSsn:inSSN];
    }
    return self;
}

-(NSTimeInterval)age
{
    return [birthDate timeIntervalSinceNow];
}

-(void)giveRaise:(double)percentage
{
    salary = salary + (salary * percentage);
}

-(double)bonus
{
    return salary * 0.05;
}

@end
