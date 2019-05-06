//
//  main.m
//  SnakesAndLadders
//
//  Created by Frank Chen on 2019-05-05.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Player* newPlayer = [[Player alloc]init];
        
        NSLog(@"Type roll or r to start the Snake & Ladder game");
        
        while (![newPlayer gameOver]) {
            char userInput[255];
            fgets(userInput, 255, stdin);
            NSString* userInputString = [NSString stringWithUTF8String:userInput
                                         ];
            userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([userInputString isEqualToString:@"roll"] || [userInputString isEqualToString:@"r"]) {
                [newPlayer roll];
            }
            
            if ([newPlayer gameOver] == YES) {
                break;
            }
        }
    }
    return 0;
}
