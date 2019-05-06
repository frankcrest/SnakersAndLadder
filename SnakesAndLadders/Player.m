//
//  Player.m
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "Player.h"

@implementation Player

-(void)roll{
    NSInteger diceValue = arc4random_uniform(6) + 1;
    _currentSquare += diceValue;
    NSNumber* currentSquareInNSNumber = [NSNumber numberWithInteger:_currentSquare];
    if ([_gameLogic objectForKey:currentSquareInNSNumber] != nil) {
        NSNumber* keyValue = _gameLogic[currentSquareInNSNumber];
        NSInteger keyValueInInteger = [keyValue integerValue];
        _currentSquare = keyValueInInteger;
    }
    
    if (_currentSquare >= 100) {
        _gameOver = YES;
        _output = [NSString stringWithFormat:@"You won the game!"];
    } else {
    _output = [NSString stringWithFormat:@"You rolled a %ld \n You landed on %ld", diceValue, _currentSquare];
    }
    NSLog(@"%@", _output);
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4:@14, @9:@31, @17:@7, @20:@38, @28:@84, @40:@59, @51:@67, @64:@60, @63:@81, @89:@26, @95:@75, @99:@78};
        _gameOver = NO;
    }
    return self;
}

@end
