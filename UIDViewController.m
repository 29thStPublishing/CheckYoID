//
//  UIDViewController.m
//  CheckYoID
//
//  Created by nataliepo on 6/17/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import "UIDViewController.h"


@implementation UIDViewController

@synthesize uidLabel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    NSLog(@"[UIDVC::initWithNibName]\n"); 

    if (self) {
        // Custom initialization
    }
    return self;
}


+ (NSString*) getDeviceUID {
    NSString * originalID = [[UIDevice currentDevice] uniqueIdentifier];
        
    if (originalID) {
        return originalID;
    }
    
    
    return @"UNKNOWN";
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    uidLabel.text = [UIDViewController getDeviceUID];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc
{
    [uidLabel release];
    [super dealloc];
}


@end
