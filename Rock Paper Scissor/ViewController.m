//
//  ViewController.m
//  Rock Paper Scissor
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Tyler Maher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
#define rock 0
#define paper 1
#define scissors 2
#define player 100
#define ai 200
#define tie 300



- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Welcome%@\nTo Rock, Paper, Scissors", @" Tyler");
	// Do any additional setup after loading the view, typically from a nib.
    [background_img setImage:[UIImage imageNamed:@"wave.jpg"]];
    
    
    [super viewDidLoad];
    [computerImg setImage:[UIImage imageNamed:@"computer.jpg"]];
    
    [super viewDidLoad];
    [playerImg setImage:[UIImage imageNamed:@"you.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)getPlayerAction:(id)sender
{
    [playerImg setImage:nil];
    [computerImg setImage:nil];
   
    playerMove = [sender tag];
   
    switch (playerMove) {
        case 0:
            [playerImg setImage:[UIImage imageNamed:@"Rock.jpg"]];
            break;
        case 1:
            [playerImg setImage:[UIImage imageNamed:@"paper.gif"]];
            break;
        case 2:
            [playerImg setImage:[UIImage imageNamed:@"Scissors.png"]];
            break;
    }
    [self playRPS];
}
-(void)getAIMove
{
     
    AIMove = arc4random()%3;
    switch (AIMove) {
        case 0:
           [computerImg setImage:[UIImage imageNamed:@"Rock.jpg"]];
            break;
        case 1:
            [computerImg setImage:[UIImage imageNamed:@"paper.gif"]];
            break;
        case 2:
            [computerImg setImage:[UIImage imageNamed:@"Scissors.png"]];
            break;
            
    }

}

-(void)playRPS
{
    [self getAIMove];
    if(playerMove == AIMove ){
        winner=tie;
    }else{
        if(playerMove == rock)
        {
            if(AIMove == scissors)
                winner=player;
            else if (AIMove ==paper)
                winner=ai;

            
        }
        else if(playerMove == scissors){
            
            if(AIMove == rock)
                winner=ai;
            else if (AIMove ==paper)
                winner=player;
        }
        else{
            
            if(AIMove == rock)
                winner=player;
            else if (AIMove ==scissors)
                winner=ai;
            

        }
    }

    if(winner== ai )
    {
        self.winlabel.text=@"You Lose";
    }
    else if (winner== player)
    {
        self.winlabel.text=@"You Win";
    }
    else
    {
        self.winlabel.text=@"It's A Tie";
    }

}
@end
