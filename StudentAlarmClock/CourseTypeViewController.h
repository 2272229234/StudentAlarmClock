//
//  CourseTypeViewController.h
//  StudentAlarmClock
//
//  Created by Bo Guan on 1/11/15.
//  Copyright (c) 2015 Bo Guan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlarmSetupViewController.h"

@interface CourseTypeViewController : UIViewController

    
    @property(nonatomic)IBOutlet UISegmentedControl *typeSelector;
    @property(nonatomic)IBOutlet UIImageView *type1ImageView;
    @property(nonatomic)IBOutlet UIImageView *type2ImageView;
    @property(nonatomic) NSInteger typeFlag;

    @property(nonatomic) IBOutlet UILabel *typeDescription;

    @property(nonatomic, strong)UIImage *type1;
    @property(nonatomic, strong)UIImage *type2;
    -(IBAction)typeSwitch:(id)sender;
@end
