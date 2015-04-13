//
//  FinalAlarmViewController.m
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/16/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import "FinalAlarmViewController.h"

@implementation FinalAlarmViewController


-(IBAction)mondayClicked{
    
    if(self.tuesdaySwitch.on){
        
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:0]];
    }
    else{
        [[UIApplication sharedApplication] cancelLocalNotification:[self.notifications objectAtIndex:0]];
    }
    
}
-(IBAction)tuesdayClicked{
    
    if(self.tuesdaySwitch.on){
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:1]];
    }
    else{
        [[UIApplication sharedApplication] cancelLocalNotification:[self.notifications objectAtIndex:1]];
    }
    
}
-(IBAction)wednesdayClicked{
    
    if(self.tuesdaySwitch.on){
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:2]];
    }
    else{
        [[UIApplication sharedApplication] cancelLocalNotification:[self.notifications objectAtIndex:2]];
    }

}
-(IBAction)thursdayClicked{
    
    if(self.tuesdaySwitch.on){
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:3]];
    }
    else{
        [[UIApplication sharedApplication] cancelLocalNotification:[self.notifications objectAtIndex:3]];
    }

}
-(IBAction)fridayClicked{
    
    if(self.tuesdaySwitch.on){
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:4]];
    }
    else{
        [[UIApplication sharedApplication] cancelLocalNotification:[self.notifications objectAtIndex:4]];
    }

}


-(void)viewDidLoad{
    
    [super viewDidLoad];
    [self setupTimeLabel];
    [self setupNotifications];
    
    
}


-(void) setupNotifications{
    
    for(int i = 0; i < [self.notifications count]; i++){
        
        [[UIApplication sharedApplication] scheduleLocalNotification: [self.notifications objectAtIndex:i]];
        
    }
    
    
}

-(void) setupTimeLabel{
    
    NSArray *timeArray = @[self.mondayTime, self.tuesdayTime, self.wednesdayTime, self.thursdaydayTime, self.fridayTime];
    NSDateFormatter *timeFormatter = [[NSDateFormatter alloc] init];
    [timeFormatter setDateFormat:@"HH:mm"];
    for (int i = 0; i < [self.notifications count]; i++) {
        NSDate *temp = ((UILocalNotification *)[self.notifications objectAtIndex: i]).fireDate;
        ((UILabel *)[timeArray objectAtIndex:i]).text = [timeFormatter stringFromDate:temp];
        NSLog(@"The time is: %@", [timeFormatter stringFromDate:temp]);
    }
}

@end
