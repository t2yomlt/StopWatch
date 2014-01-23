//
//  ViewController.h
//  StopWatch
//
//  Created by 越智　達也 on 14/01/23.
//  Copyright (c) 2014年 Univercity of Kitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UILabel *TimeLabel;
    IBOutlet UIButton *StartButton;
    IBOutlet UIButton *StopButton;
    IBOutlet UIButton *ClearButton;
    
    NSTimer *timeTicker;
}

@property(nonatomic, retain) UILabel *time;

-(IBAction) StartButtonDown:(id) sender;
-(IBAction) StopButtonDown:(id) sender;
-(IBAction) ClearButtonDown:(id) sender;

-(void)showActivity;

@end