//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _currentIndex = 0;
        _gameOver = NO;
    }
    return self;
}

- (void)createPlayers:(int)numberOfPlayers{
    for (int i = 0; i < numberOfPlayers; i++) {
        Player* newPlayer = [[Player alloc]init];
        newPlayer.name = [NSString stringWithFormat:@"player%d",i];
        [_players addObject:newPlayer];
    }
}

-(void)roll{
    [self.currentPlayer roll];
    _gameOver = [self.currentPlayer gameOver];
    _currentIndex += 1;
}

- (Player *)currentPlayer{
    NSInteger playersCount = [_players count];
    NSInteger playerIndex = _currentIndex % playersCount;
    return _players[playerIndex];
}
@end
