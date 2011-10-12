//
//  ViewController.m
//  EasyBlocksCallbackOS4
//
//  Created by Tomohisa Takaoka on 10/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "EasyCallBack.h"
@interface ViewController()
@property (nonatomic, retain) IBOutlet UIButton* button;
@property (nonatomic, retain) IBOutlet UILabel* label;

-(void) callbackDone:(id)sender;
-(IBAction)buttonClicked:(id)sender;
@property (nonatomic, retain) EasyCallBack* easyCallback;
@end

@implementation ViewController
@synthesize button;
@synthesize label;
@synthesize easyCallback;

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

- (void) dealloc {
    self.button = nil;
    self.label = nil;
    self.easyCallback = nil;
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(IBAction)buttonClicked:(id)sender{
    self.easyCallback = [[[EasyCallBack alloc] init] autorelease];
    [easyCallback callBackStart:^(id sender){[self callbackDone:sender];}];
    label.text = @"started callback";
}
-(void) callbackDone:(id)sender{
    UIAlertView* alert = [[[UIAlertView alloc] initWithTitle:@"test" message:@"callback is called!" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil] autorelease];
    [alert show];
    label.text = @"finished callback";
}

@end
