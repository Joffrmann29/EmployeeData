//
//  DetailViewController.h
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeRecord.h"
#import "EditViewController.h"

@protocol DetailViewControllerDelegate <NSObject>

-(void)updateEmployee;

@end

@interface DetailViewController : UIViewController<EditViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *wageLabel;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;
@property (strong, nonatomic) IBOutlet UILabel *hireLabel;

@property (weak, nonatomic) id <DetailViewControllerDelegate> delegate;

@property (strong, nonatomic) EmployeeRecord *employeeRecord;
- (IBAction)editEmployee:(UIBarButtonItem *)sender;
@end
