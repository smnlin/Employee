//
//  main.m
//  Employee
//
//  Created by Simon Lin on 1/23/13.
//  Copyright (c) 2013 Simon Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        Employee *joeBlow = [[Employee alloc]initWithFirstName:@"Joe"
                                                      lastName:@"Blow"
                                                     birthDate:[NSDate dateWithNaturalLanguageString:@"12/1/1990"]
                                                           ssn:@"111"];
        Employee *janeDoe = [[Employee alloc]initWithFirstName:@"Jane"
                                                      lastName:@"Doe"
                                                     birthDate:[NSDate dateWithNaturalLanguageString:@"11/1/1985"]
                                                           ssn:@"222"];
        Manager *johnAppleseed = [[Manager alloc]initWithFirstName:@"John"
                                                      lastName:@"Appleseed"
                                                     birthDate:[NSDate dateWithNaturalLanguageString:@"11/1/1970"]
                                                           ssn:@"333"];
        [johnAppleseed addReport:joeBlow];
        [johnAppleseed addReport:janeDoe];
        
        joeBlow.salary = 50000;
        janeDoe.salary = 75000;
        johnAppleseed.salary = 100000;
        
        NSMutableArray *allEmployees = [NSMutableArray array];
        [allEmployees addObject:joeBlow];
        [allEmployees addObject:janeDoe];
        [allEmployees addObject:johnAppleseed];
        
        for (Employee *employee in allEmployees)
        {
            [employee giveRaise:0.10];
            NSLog(@"Employee %@ %@'s salary is: %.2f with a bonus of: %.2f", employee.firstName, employee.lastName, employee.salary, employee.bonus);
        }
        
        //[johnAppleseed release];
        //[janeDoe release];
        //[joeBlow release];
    }
    return 0;
}

