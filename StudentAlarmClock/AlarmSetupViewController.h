//
//  AlarmSetupViewController.h
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/11/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CourseTypeViewController.h"
#import "FinalAlarmViewController.h"

@interface AlarmSetupViewController : UIViewController

@property(nonatomic)IBOutlet UIButton *done;
@property(nonatomic)IBOutlet UIButton *next;
@property(nonatomic)IBOutlet UIDatePicker *datePicker;
@property(nonatomic)IBOutlet UILabel *dateLabel;
@property(nonatomic, strong)NSMutableArray *timeArray;
@property(nonatomic)NSInteger typeFlag;
@property(nonatomic)NSMutableArray *localNotifications;



@end
