//
//  Employee.h
//  Employee
//
//  Created by Simon Lin on 1/23/13.
//  Copyright (c) 2013 Simon Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    NSString *firstName;
    NSString *lastName;
    NSDate *birthDate;
    NSDate *dateOfEmployment;
    Employee *manager;
    NSString *ssn;
    double salary;
}
@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSDate *birthDate;
@property (nonatomic, retain) NSDate *dateOfEmployment;
@property (nonatomic, retain) Employee *manager;
@property (nonatomic, retain) NSString *ssn;
@property (nonatomic, readonly) NSTimeInterval age;
@property (nonatomic) double salary;

-(id)initWithFirstName: (NSString *)inFirstName
            lastName: (NSString *)inLastName
             birthDate: (NSDate *)inBirthDate
                   ssn: (NSString *)inSSN;
-(void)giveRaise:(double)percentage;
-(double)bonus;

@end
