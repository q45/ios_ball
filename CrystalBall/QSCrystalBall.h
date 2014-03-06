//
//  QSCrystalBall.h
//  CrystalBall
//
//  Created by Quintin Smith on 3/6/14.
//  Copyright (c) 2014 Quintin Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QSCrystalBall : NSObject {
    NSArray *_predictions;
  
}

@property (strong, nonatomic, readonly) NSArray *predictions;


-(NSString *) randomPrediction;


@end
