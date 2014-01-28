//
//  ViewController.m
//  CheckNetwork
//
//  Created by SVM-RAJESH on Jan,28.
//  Copyright (c) 2014 Tech-Dev-Mobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([CheckNetworkAvaliblity CheckNetwork])
    {
       
        NSLog(@"Success, Your network is available");
    }
    else
    {
        NSLog(@"Sorry, Network connection is unavailable");
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Sorry, Network connection is unavailable" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
