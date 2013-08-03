//
//  CardGameViewController.m
//  Match2
//
//  Created by daniel diaz on 8/3/13.
//  Copyright (c) 2013 dddiaz. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
# import "Card.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) PlayingCardDeck *deck;

@end

@implementation CardGameViewController

- (PlayingCardDeck *)deck {
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc]init];
    }
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    //only draw on face up aka on button not selected
    if (!sender.isSelected){
        NSLog(@"Draw Card");
        Card *card = [self.deck drawRandomCard];
        if (!card){
            NSLog(@"Re-init deck and draw card again");
            card = [[self.deck init] drawRandomCard];
            self.flipCount = 0;
        }
        
        NSLog(@"Card %@", card.contents);
        [sender setTitle:card.contents forState:UIControlStateSelected];
        //sender.selected =!sender.isSelected;
        self.flipCount++;
    }
    sender.selected = !sender.isSelected;
}

@end
