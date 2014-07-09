//
//  EditViewController.h
//  EmployeeData
//
//  Created by Administrator on 7/9/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeRecord.h"

@protocol EditViewControllerDelegate <NSObject>

-(void)didUpdateEmployee;

@end

@interface EditViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstNameField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameField;
@property (strong, nonatomic) IBOutlet UITextField *wageField;
@property (strong, nonatomic) IBOutlet UITextField *positionField;
@property (strong, nonatomic) EmployeeRecord *record;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) id <EditViewControllerDelegate> delegate;

- (IBAction)saveEditedEmployee:(id)sender;
@end
