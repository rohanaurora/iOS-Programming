//
//  ViewController.m
//  MySliderApp
//
//  Created by Rohan Aurora on 4/7/14.
//  Copyright (c) 2014 rohanaurora. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction) userSlide {
    
myLbl.text = [NSString stringWithFormat:@"Sensitivity - %0.1f",mySlider.value];
    
}

@end
