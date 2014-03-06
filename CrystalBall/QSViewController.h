//
//  QSViewController.h
//  CrystalBall
//
//  Created by Quintin Smith on 3/6/14.
//  Copyright (c) 2014 Quintin Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QSCrystalBall;

@interface QSViewController : UIViewController
@property (strong, nonatomic) QSCrystalBall *crystalBall;
@property (strong, nonatomic) IBOutlet UILabel *predictionCount;
@property (weak, nonatomic) IBOutlet UILabel *labelText;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
-(void) makePrediction;



@end
