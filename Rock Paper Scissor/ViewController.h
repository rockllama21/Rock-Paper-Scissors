//
//  ViewController.h
//  Rock Paper Scissor
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Tyler Maher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView* background_img;
    IBOutlet UIImageView* computerImg;
    IBOutlet UIImageView* playerImg;
    int playerMove;
    int AIMove;
    int winner;
}
@property (weak, nonatomic) IBOutlet UILabel *winlabel;
-(IBAction)getPlayerAction:(id)sender;
-(void)getAIMove;
-(void)playRPS;

@end







