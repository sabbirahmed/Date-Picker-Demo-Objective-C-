//
//  ViewController.m
//  Date Picker Demo
//
//  Created by Sabbir Ahmed on 11/14/16.
//  Copyright © 2016 Sabbir Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)displayDay:(UIButton *)sender {
    NSDate *chosen = [self.datePicker date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
    
    NSString *weekDay = [dateFormatter stringFromDate:chosen];
    NSString *mse = [[NSString alloc] initWithFormat:@"That's a %@", weekDay];
    
    UIAlertController *alartCon = [UIAlertController alertControllerWithTitle:nil message:mse preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction* action){}];
    [alartCon addAction:defaultAction];
    [self presentViewController:alartCon animated:YES completion:nil];
}

@end
