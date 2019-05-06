//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;
NS_ASSUME_NONNULL_BEGIN

@interface PlayerManager : NSObject

@property NSMutableArray* players;
@property NSInteger currentIndex;
@property BOOL gameOver;


-(void)createPlayers:(int)numberOfPlayers;
-(void)roll;

-(Player*)currentPlayer;

@end

NS_ASSUME_NONNULL_END
