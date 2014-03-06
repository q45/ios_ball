//
//  QSCrystalBall.m
//  CrystalBall
//
//  Created by Quintin Smith on 3/6/14.
//  Copyright (c) 2014 Quintin Smith. All rights reserved.
//

#import "QSCrystalBall.h"

@implementation QSCrystalBall

-(NSArray *) predictions {
   if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:@"Today will be a good day",
                        @"Be Careful",
                        @"Pay Attention to detail",
                        @"You bet",
                        @"Work hard today",
                        @"You are going to get lucky today",
                        nil];
      
        
    }
    
    
    return _predictions;
}

-(NSString *) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    
    return [self.predictions objectAtIndex:random];

}



@end
