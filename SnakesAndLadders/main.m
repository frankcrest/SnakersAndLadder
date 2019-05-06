//
//  main.m
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        PlayerManager* playerManager = [[PlayerManager alloc]init];
        
        BOOL playersHaveBeenCreated = NO;
        
        while (!playersHaveBeenCreated) {
            NSLog(@"Enter the number of players:");
            
            char userInput[255];
            fgets(userInput, 255, stdin);
            NSString* userInputString = [NSString stringWithUTF8String:userInput];
            userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([userInputString intValue]) {
                [playerManager createPlayers:[userInputString intValue]];
                playersHaveBeenCreated = YES;
            } else{
                NSLog(@"Please enter a correct integer value for number of players");
            }
        }
        
        NSLog(@"Type roll or r to start the Snake & Ladder game:");
        
        while (![playerManager gameOver]) {
            char userInput[255];
            fgets(userInput, 255, stdin);
            NSString* userInputString = [NSString stringWithUTF8String:userInput
                                         ];
            userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([userInputString isEqualToString:@"roll"] || [userInputString isEqualToString:@"r"]) {
                [playerManager roll];
            }
            
            if (playerManager.gameOver == YES) {
                break;
            }
        }
    }
    return 0;
}
