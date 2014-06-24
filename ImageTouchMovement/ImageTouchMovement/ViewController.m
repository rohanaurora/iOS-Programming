//
//  ViewController.m
//  ImageTouchMovement
//
//  Created by Rohan Aurora on 6/23/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    CGRect myImageRect = CGRectMake(0, 0, 100, 100);
    self.imageview = [[UIImageView alloc] initWithFrame:myImageRect];
    [self.imageview setImage:[UIImage imageNamed:@"swift.png"]];
    [self.view addSubview:self.imageview];
    
}


-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:touch.view];
    self.imageview.center = touchLocation;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // get touch event
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:self.view];
    if ([touch view] == self.view)  // Replace here
    {
        self.imageview.center = touchLocation;
    }
}


// Optional Code to update the frame and stop movements which are made by clicks

//    CGPoint lastLocation = [touch previousLocationInView:self.view];
//    CGPoint location = [touch locationInView: self.view];
//
//    CGFloat xMovement = location.x - lastLocation.x;
//    CGFloat yMovement = location.y - lastLocation.y;
//
//    CGRect frame = touch.view.frame;
//    frame.origin.x =  frame.origin.x + xMovement;
//    frame.origin.y =  frame.origin.y + yMovement;
//    touch.view.frame = frame;

@end
