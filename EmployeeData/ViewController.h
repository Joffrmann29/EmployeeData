//
//  ViewController.h
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeRecord.h"

@protocol ViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didAddEmployee:(EmployeeRecord *)record;

@end

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstNameField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameField;
@property (strong, nonatomic) IBOutlet UITextField *wageField;
@property (strong, nonatomic) IBOutlet UITextField *positionField;
@property (strong, nonatomic) EmployeeRecord *record;
@property (weak, nonatomic) id <ViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)addEmployee:(UIBarButtonItem *)sender;
- (IBAction)cancelAdd:(UIButton *)sender;
@end
