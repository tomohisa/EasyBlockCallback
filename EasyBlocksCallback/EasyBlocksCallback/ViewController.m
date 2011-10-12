//
//  ViewController.m
//  EasyBlocksCallback
//
//  Created by Tomohisa Takaoka on 10/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "EasyCallBack.h"

@interface ViewController()
-(void) callbackDone:(id)sender;
-(IBAction)buttonClicked:(id)sender;
@end

@implementation ViewController {
    EasyCallBack* easyCallback;
    IBOutlet UIButton* button;
    IBOutlet UILabel* label;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
-(IBAction)buttonClicked:(id)sender{
    easyCallback = [[EasyCallBack alloc] init];
    [easyCallback callBackStart:^(id sender){[self callbackDone:sender];}];
    label.text = @"started callback";
}
-(void) callbackDone:(id)sender{
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"test" message:@"callback is called!" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    label.text = @"finished callback";
}
@end