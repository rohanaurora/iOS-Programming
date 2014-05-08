//
//  ViewController.h
//  MyAdsApp
//
//  Created by Rohan Aurora on 5/7/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADInterstitial.h"
#import "GADBannerView.h"
#import <iAd/iAd.h>


@interface ViewController : UIViewController <GADInterstitialDelegate>  {

GADBannerView *bannerView_;
GADInterstitial *interstitial_;
    
}

@property (strong, nonatomic) ADBannerView *appleAd;

@end

    
