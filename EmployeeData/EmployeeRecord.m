//
//  EmployeeRecord.m
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "EmployeeRecord.h"

@implementation EmployeeRecord

/* Designated Initializer */
-(id)initWithData:(NSDictionary *)data
{
    /* Designated Initializer must call the super classes initialization method */
    self = [super init];
    
    /* Setup the object with values from the NSDictionary */
    if (self){
        self.firstName = data[FIRST_NAME];
        self.lastName = data[LAST_NAME];
        self.wage = [data[WAGE]intValue];
        self.position = data[POSITION];
        self.dateOfHire = data[HIRE_DATE];
    }
    
    return self;
}

/* Default initializer calls the new designated initializer initWithData */
-(id)init
{
    self = [self initWithData:nil];
    return self;
}

@end
