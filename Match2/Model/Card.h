//
//  Card.h
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString * contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;

@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match: (NSArray *)otherCards;

@end