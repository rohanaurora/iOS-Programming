//
//  ViewController.h
//  MyDelegatesApp
//
//  Created by Rohan Aurora on 4/15/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate> {
    
    UILabel *myLabel;
    UITextField *myText;

    }

@end
