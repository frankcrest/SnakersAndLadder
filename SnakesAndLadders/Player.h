//
//  Player.h
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary* gameLogic;
@property NSString* output;
@property BOOL gameOver;

-(void)roll;

@end

NS_ASSUME_NONNULL_END
