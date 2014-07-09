//
//  ViewController.m
//  EmployeeData
//
//  Created by Administrator on 7/7/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.firstNameField.delegate = self;
    self.lastNameField.delegate = self;
    self.wageField.delegate = self;
    self.positionField.delegate = self;
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIFont fontWithName:@"Optima" size:15],
      NSFontAttributeName, nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(EmployeeRecord *)returnNewEmployee
{
    EmployeeRecord *employeeObject = [[EmployeeRecord alloc] init];
    employeeObject.firstName = self.firstNameField.text;
    employeeObject.lastName = self.lastNameField.text;
    employeeObject.wage = [self.wageField.text intValue];
    employeeObject.position = self.positionField.text;
    employeeObject.dateOfHire = self.datePicker.date;
    
    return employeeObject;
}

#pragma mark - UITextFieldDelegate

/* Method is called when the user taps the return key. When this action occurs we tell the textField to dismiss the keyboard. */
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)addEmployee:(UIBarButtonItem *)sender {
    [self.delegate didAddEmployee:[self returnNewEmployee]];
}

- (IBAction)cancelAdd:(UIButton *)sender {
    [self.delegate didCancel];
}
@end
