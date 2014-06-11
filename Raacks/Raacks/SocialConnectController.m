//
//  SocialConnectController.m
//  Raacks
//
//  Created by Er. Ajeet Shakya on 6/10/14.
//  Copyright (c) 2014 Leap Frog Technology. All rights reserved.
//

#import "SocialConnectController.h"
#import "LoginController.h"
#import "SignUpController.h"

@interface SocialConnectController ()

@end

@implementation SocialConnectController

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
    // Do any additional setup after loading the view from its nib.
    [signUpBtn.layer setCornerRadius:2.0];
    [loginBtn.layer setCornerRadius:2.0];
    [loginBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [loginBtn.layer setBorderWidth:1.0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setTitle:@""];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self setTitle:@""];
}

- (IBAction) signUpBtnTapped:(id) sender
{
    SignUpController *controller = [[SignUpController alloc] initWithNibName:@"SignUpController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction) loginBtnTapped:(id) sender
{
    LoginController *controller = [[LoginController alloc] initWithNibName:@"LoginController" bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction) facebookBtnTapped:(id) sender
{

}

- (IBAction) twitterBtnTapped:(id) sender
{

}

@end
