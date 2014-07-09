//
//  TableViewController.h
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "DetailViewController.h"

#define EMPLOYEE_OBJECTS_KEY @"Employee Objects Key"

@interface TableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, ViewControllerDelegate, DetailViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *employeeObjects;

- (IBAction)addEmp:(UIBarButtonItem *)sender;
- (IBAction)reorderEmployees:(UIBarButtonItem *)sender;
@end
