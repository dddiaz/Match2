//
//  PlayingCardDeck.m
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    
    //these two loops will go through every rank and suit and crate a card
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank<= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
    }
    
    return self;
}

@end
