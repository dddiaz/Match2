//
//  PlayingCard.h
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;

@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end