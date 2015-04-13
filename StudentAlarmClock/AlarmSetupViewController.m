//
//  AlarmSetupViewController.m
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/11/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import "AlarmSetupViewController.h"

@interface AlarmSetupViewController()


@end

@implementation AlarmSetupViewController


-(void)setupNotificationArray{
    
    self.localNotifications = [NSMutableArray arrayWithCapacity: 5];
    
    NSDate *today = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *thisWeekday = [calendar components:(NSDayCalendarUnit | NSWeekdayCalendarUnit) fromDate:today];
    
    //MWF
    if(self.typeFlag == 1){
   
            
            switch ([thisWeekday weekday]) {
                    
                //Sunday
                case 1:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+1)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    break;
                    
                //Monday
                case 2:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+7)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    break;
                    
                //Tuesday
                case 3:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+6)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    break;
                    
                //Wednesday
                case 4:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+5)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    break;
                    
                //Thursday
                case 5:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+4)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    break;
                    
                //Friday
                case 6:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+3)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    
                    break;
                    
                //Saturday
                case 7:
                    for (int i = 0; i < 5; i++) {
                        
                        NSDateComponents *date = [[NSDateComponents alloc] init];
                        NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+2)];
                        date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                        NSDateComponents *time = [[NSDateComponents alloc]init];
                        
                        if(i%2 == 1){
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 1]];
                        }
                        else{
                            time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: 0]];
                        }
                        
                        
                        NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                        nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                        
                        
                        UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                        tempNotification.alertBody = @"Get Up!";
                        tempNotification.alertAction = @"OK";
                        tempNotification.soundName = UILocalNotificationDefaultSoundName;
                        tempNotification.fireDate = nextDatePrecise;
                        
                        //debugging
                        
                        NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                        [debuggingFormatter setDateFormat:@"HH:mm"];
                        NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                        
                        //debugging ends
                        
                        [self.localNotifications addObject: tempNotification];
                    }
                    
                    break;
                    
                default:
                    break;
            }
            
            
        

    }
    
    //DAY by DAY
    else{
       
        switch ([thisWeekday weekday]) {
                
                //Sunday
            case 1:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+1)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Monday
            case 2:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+7)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Tuesday
            case 3:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+6)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Wednesday
            case 4:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+5)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Thursday
            case 5:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+4)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Friday
            case 6:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+1)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    [self.localNotifications addObject: tempNotification];
                }
                break;
                
                //Saturday
            case 7:
                for (int i = 0; i < 5; i++) {
                    
                    NSDateComponents *date = [[NSDateComponents alloc] init];
                    NSDate *nextDateTemp = [today dateByAddingTimeInterval: 60*60*24*(i+3)];
                    date = [calendar components: (NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit) fromDate:nextDateTemp];
                    
                    NSDateComponents *time = [[NSDateComponents alloc]init];
                    time = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit) fromDate:[self.timeArray objectAtIndex: i]];
                    
                    
                    
                    NSDate *nextDatePrecise = [calendar dateFromComponents:date];
                    nextDatePrecise = [calendar dateByAddingComponents:time toDate:nextDatePrecise options:0];
                    
                    
                    UILocalNotification *tempNotification = [[UILocalNotification alloc] init];
                    tempNotification.alertBody = @"Get Up!";
                    tempNotification.alertAction = @"OK";
                    tempNotification.soundName = UILocalNotificationDefaultSoundName;
                    tempNotification.fireDate = nextDatePrecise;
                    
                    //debugging
                    
                    NSDateFormatter *debuggingFormatter = [[NSDateFormatter alloc] init];
                    [debuggingFormatter setDateFormat:@"HH:mm"];
                    NSLog(@"The time as been set to: %@", [debuggingFormatter stringFromDate:nextDatePrecise]);
                    
                    //debugging ends
                    
                    [self.localNotifications addObject: tempNotification];
                }
                
                break;
                
            default:
                break;
        }

        
    }
    
    
}


-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    self.next.hidden = NO;
    self.next.enabled = YES;
    self.done.hidden = YES;
    self.done.enabled = NO;
    if (self.timeArray == nil) {
        
        self.timeArray = [NSMutableArray arrayWithCapacity:0];
    }
    
    if (self.typeFlag == 1) {
        
        if([self.timeArray count] != 0){
            self.dateLabel.text = @"Please enter your Tuesday & Thurday schedule:";
            //Disable the next button and enable done button
            self.next.hidden = YES;
            self.next.enabled = NO;
            self.done.hidden = NO;
            self.done.enabled = YES;
        }
        else{
            self.dateLabel.text = @"Please enter your Monday, Wednesday and Friday schedule:";
        }
    }
    else{
        switch ([self.timeArray count]) {
            case 0:
                self.dateLabel.text = @"Please enter your Monday schedule:";
                break;
            case 1:
                self.dateLabel.text = @"Please enter your Tuesday schedule:";
                break;
            case 2:
                self.dateLabel.text = @"Please enter your Wednesday schedule:";
                break;
            case 3:
                self.dateLabel.text = @"Please enter your Thursday schedule:";
                break;
            case 4:
                self.dateLabel.text = @"Please enter your Friday schedule:";
                
                
                //Disable the next button and enable done button
                self.next.hidden = YES;
                self.next.enabled = NO;
                self.done.hidden = NO;
                self.done.enabled = YES;
                break;
                
            default:
                break;
        }
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"selfTransition"]) {
        
        AlarmSetupViewController *temp = (AlarmSetupViewController *)segue.destinationViewController;
        
        temp.timeArray = [NSMutableArray arrayWithArray:self.timeArray];
        [temp.timeArray addObject: self.datePicker.date];
        
        temp.typeFlag = self.typeFlag;
    }
    else if([segue.identifier isEqualToString:@"doneTransition"]){
        [self.timeArray addObject: self.datePicker.date];
        [self setupNotificationArray];
        FinalAlarmViewController *temp = (FinalAlarmViewController *)segue.destinationViewController;
        temp.notifications = [NSMutableArray arrayWithArray:self.localNotifications];
        
    }
    
}

@end
