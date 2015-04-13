//
//  FinalAlarmViewController.h
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/16/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalAlarmViewController : UIViewController

@property(nonatomic) NSMutableArray *notifications;

@property(nonatomic) IBOutlet UISwitch *mondaySwitch;
@property(nonatomic) IBOutlet UISwitch *tuesdaySwitch;
@property(nonatomic) IBOutlet UISwitch *wednesdaySwitch;
@property(nonatomic) IBOutlet UISwitch *thursdaySwitch;
@property(nonatomic) IBOutlet UISwitch *fridaySwitch;

@property(nonatomic) IBOutlet UILabel *mondayTime;
@property(nonatomic) IBOutlet UILabel *tuesdayTime;
@property(nonatomic) IBOutlet UILabel *wednesdayTime;
@property(nonatomic) IBOutlet UILabel *thursdaydayTime;
@property(nonatomic) IBOutlet UILabel *fridayTime;


-(IBAction)mondayClicked;
-(IBAction)tuesdayClicked;
-(IBAction)wednesdayClicked;
-(IBAction)thursdayClicked;
-(IBAction)fridayClicked;

@end
