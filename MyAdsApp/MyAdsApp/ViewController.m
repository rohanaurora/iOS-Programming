//
//  ViewController.m
//  MyAdsApp
//
//  Created by Rohan Aurora on 5/7/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController () <ADBannerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    //  Displays AdMob (banner) to your iOS app
    
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    bannerView_.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-50, 320, 50);
    
    
    // Specify the ad unit ID.
    bannerView_.adUnitID = @"ca-app-pub-2710315471973271/2033856745";
    
    
    // Let the runtime know which UIViewController to restore after taking the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];

    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    [self loadAdMobIntersBanner];
   
}

//  Displays AdMob (interstitial) to your iOS app

- (void)loadAdMobIntersBanner
{
    interstitial_ = [[GADInterstitial alloc] init];
    interstitial_.adUnitID = @"ca-app-pub-0667784050147760/7591603826";
    interstitial_.delegate = self;
    GADRequest *request = [GADRequest request];
    [interstitial_ loadRequest:request];
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [interstitial_ presentFromRootViewController:self];
}

//  Displays iAds to your iOS app

- (AppDelegate *) appdelegate {
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

-(void) viewWillAppear:(BOOL)animated{
    
    self.appleAd = [[self appdelegate] appleAd];
    self.appleAd.delegate = self;
    
    [self.appleAd setFrame:CGRectMake(0,0,320,self.view.frame.size.height)];
    [self.view addSubview:self.appleAd];
}

-(void) viewWillDisappear:(BOOL)animated{
    self.appleAd.delegate = nil;
    self.appleAd=nil;
    [self.appleAd removeFromSuperview];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    NSLog(@"ads loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [self.appleAd setAlpha:1];
    [UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ads not loaded");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [self.appleAd setAlpha:0];
    [UIView commitAnimations];
}




@end
