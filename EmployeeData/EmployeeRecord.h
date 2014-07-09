//
//  EmployeeRecord.h
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FIRST_NAME @"First Name"
#define LAST_NAME @"Last Name"
#define WAGE @"Employee Wage"
#define POSITION @"Employee Position"
#define HIRE_DATE @"Hire Date"

@interface EmployeeRecord : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (nonatomic) int wage;
@property (strong, nonatomic) NSString *position;
@property (strong, nonatomic) NSDate *dateOfHire;

/* Custom Initializer which has a single parameter of class NSDictionary. */
-(id)initWithData:(NSDictionary *)data;

@end
