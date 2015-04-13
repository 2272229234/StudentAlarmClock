//
//  CourseTypeViewController.m
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/11/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import "CourseTypeViewController.h"

@implementation CourseTypeViewController


-(IBAction)typeSwitch:(id)sender{
    
    NSInteger index = self.typeSelector.selectedSegmentIndex;
    if (index == 0) {
    
        [self.type1ImageView setHidden:NO];
        [self.type2ImageView setHidden:YES];
        self.typeDescription.text = @"Description: This schedule applies to students who have same classes on Monday, Wednesday and Friday, and at the mean time, Tuesday and Thursday in different classes.";
        self.typeFlag = 1;
        
    }
    
    else{
        [self.type1ImageView setHidden:YES];
        [self.type2ImageView setHidden:NO];
        self.typeDescription.text = @"Description: This schedule applies to students who have different classes on every weekday.";
        self.typeFlag = 2;
        
    }
    
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if([segue.identifier isEqualToString:@"typeTransition"]){
        
        AlarmSetupViewController *alarmController = (AlarmSetupViewController *)segue.destinationViewController;
        alarmController.typeFlag = self.typeFlag;
        
    }
}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    if(self.typeSelector.selectedSegmentIndex == 0){
        [self.type1ImageView setHidden:NO];
        [self.type2ImageView setHidden:YES];
        self.typeDescription.text = @"Description: This schedule applies to students who have same classes on Monday, Wednesday and Friday, and at the mean time, Tuesday and Thursday in different classes.";
        self.typeFlag = 1;
        
    }
    else{
        [self.type1ImageView setHidden:YES];
        [self.type2ImageView setHidden:NO];
        self.typeDescription.text = @"Description: This schedule applies to students who have different classes on every weekday.";
        self.typeFlag = 2;
    }
    
    
}




@end
