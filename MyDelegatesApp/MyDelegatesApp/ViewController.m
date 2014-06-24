//
//  ViewController.m
//  MyDelegatesApp
//
//  Created by Rohan Aurora on 4/15/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set an image as background
    
   [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]]];
    
    // Text field Code
    myText = [[UITextField alloc] init];
    myText.frame = CGRectMake(10, 60, 300, 50);
    myText.delegate = self;
    myText.placeholder = @"Enter your text here";
    myText.borderStyle = UITextBorderStyleRoundedRect;
    myText.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:myText];
    
    

    
    //  Label Code
    myLabel = [[UILabel alloc] initWithFrame:(CGRectMake(30, 100, 200, 200))];
    
    myLabel.textAlignment = NSTextAlignmentCenter;
    
    myLabel.numberOfLines = 4;
    
    myLabel.textColor = [UIColor blueColor];
    
    [self.view addSubview:myLabel];
    
    
    
    // Button Code
    
    UIButton *myButton = [[UIButton alloc] init];
    
    myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    myButton.frame = CGRectMake(110, 130, 100, 40);
    
    [myButton setTitle:@"Button" forState:UIControlStateNormal];

    [myButton setBackgroundColor:[UIColor colorWithRed:(0.941176) green:(0.972549) blue:(1.0) alpha:(0.4)]];
    
    SEL mySelector = @selector(buttonClick);
    
    [myButton addTarget:self action:mySelector forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:myButton];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) buttonClick {
    
    myLabel.text = myText.text;
    [myText resignFirstResponder];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    myLabel.text = myText.text;
    
    [textField resignFirstResponder];
   
    return YES;
    
}

@end
