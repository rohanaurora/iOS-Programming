//
//  ViewController.h
//  MySliderApp
//
//  Created by Rohan Aurora on 4/7/14.
//  Copyright (c) 2014 rohanaurora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UISlider *mySlider;
    IBOutlet UILabel *myLbl;
    
}

-(IBAction) userSlide;

@end
