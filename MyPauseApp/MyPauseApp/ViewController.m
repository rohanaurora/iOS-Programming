//
//  ViewController.m
//  MyPauseApp
//
//  Created by Rohan Aurora on 4/16/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pauseTheGame) name:@"BackgroundMode" object:nil];

    // KVO Test
    [self addObserver:self forKeyPath:@"view.frame" options:0 context:nil];
    
}


-(void) pauseTheGame {
    
    myLabel.text = @"Game Paused. Press key!";
}

-(IBAction) clickButton {
    
    myLabel.text = @"Game Running";
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    NSLog(@"Observing...");
}

@end
