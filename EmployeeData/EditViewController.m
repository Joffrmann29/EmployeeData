//
//  EditViewController.m
//  EmployeeData
//
//  Created by Administrator on 7/9/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.firstNameField.delegate = self;
    self.lastNameField.delegate = self;
    self.wageField.delegate = self;
    self.positionField.delegate = self;
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIFont fontWithName:@"Optima" size:15],
      NSFontAttributeName, nil]];
    
    self.firstNameField.text = self.record.firstName;
    self.lastNameField.text = self.record.lastName;
    self.wageField.text = [NSString stringWithFormat:@"%i", self.record.wage];
    self.positionField.text = self.record.position;
    self.datePicker.date = self.record.dateOfHire;
}

-(void)updateEmployee
{
    self.record.firstName = self.firstNameField.text;
    self.record.lastName = self.lastNameField.text;
    self.record.wage = [self.wageField.text intValue];
    self.record.position = self.positionField.text;
    self.record.dateOfHire = self.datePicker.date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveEditedEmployee:(id)sender {
    [self updateEmployee];
    [self.delegate didUpdateEmployee];
}
@end
