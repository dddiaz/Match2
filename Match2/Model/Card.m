//
//  Card.m
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
