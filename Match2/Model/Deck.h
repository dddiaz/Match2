//
//  Deck.h
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card*)card atTop: (BOOL)atTop;

- (Card *)drawRandomCard;

@end
