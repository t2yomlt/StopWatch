//
//  ViewController.m
//  StopWatch
//
//  Created by 越智　達也 on 14/01/23.
//  Copyright (c) 2014年 Univercity of Kitakyushu. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize time;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ClearButton.hidden = YES;
    StartButton.hidden = NO;
    StopButton.hidden = YES;
    
}




-(IBAction) StartButtonDown:(id) sender{
    timeTicker = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
    
    StartButton.hidden = YES;
    StopButton.hidden = NO;
    TimeLabel.hidden = YES;

    
}

-(IBAction) StopButtonDown:(id) sender{
    [timeTicker invalidate];
    
    ClearButton.hidden = NO;
    StopButton.hidden = YES;
    TimeLabel.hidden = NO;
    
 //  if (time = "5.00") {
  //      [TimeLabel setTextColor:[UIColor redColor]];
//    }
}

-(IBAction) ClearButtonDown:(id) sender{
    TimeLabel.text = @"0.00";
    
    StartButton.hidden = NO;
    StopButton.hidden = YES;
    ClearButton.hidden = YES;
    
    [TimeLabel setTextColor:[UIColor blackColor]];
}

-(void)showActivity{
    float currentTime = [TimeLabel.text floatValue];
    float displayTime = currentTime + 0.01;
    
    TimeLabel.text = [NSString stringWithFormat:@"%.2f", displayTime];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


@end