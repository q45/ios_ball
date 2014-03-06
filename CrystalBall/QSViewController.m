//
//  QSViewController.m
//  CrystalBall
//
//  Created by Quintin Smith on 3/6/14.
//  Copyright (c) 2014 Quintin Smith. All rights reserved.
//

#import "QSViewController.h"
#import "QSCrystalBall.h"

@interface QSViewController ()

@end

@implementation QSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.crystalBall = [[QSCrystalBall alloc] init];
    NSString *value = [NSString stringWithFormat:@"You have %d predictions ", [self.crystalBall.predictions count]];
    self.predictionCount.text = value;
        
   
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -mark Predictions

-(void)makePrediction {
    self.labelText.text = [self.crystalBall randomPrediction];
}

#pragma -mark Motion Events

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.labelText.text = nil;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event    {
    if(motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

-(void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion ended");
}

#pragma mark - Touch Events
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.labelText.text = nil;
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}
@end
