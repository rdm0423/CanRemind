//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()
@property (strong, nonatomic) IBOutlet UIView *datePicker;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)create10SecondNotification:(id)sender {
    
    UILocalNotification *localNotification = [UILocalNotification new];
    NSDate *fireDate = [[NSDate date] dateByAddingTimeInterval:10];
    localNotification.fireDate = fireDate;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.soundName = @"bell_tree.mp3";
    localNotification.alertBody = @"This is a local Notification";
    localNotification.applicationIconBadgeNumber = 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
    
}


- (IBAction)createDateNotification:(id)sender {
    
    
    
    
    
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
