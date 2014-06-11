//
//  SocialConnectController.h
//  Raacks
//
//  Created by Er. Ajeet Shakya on 6/10/14.
//  Copyright (c) 2014 Leap Frog Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialConnectController : UIViewController
{
    IBOutlet UIButton *signUpBtn, *loginBtn;
}

- (IBAction) signUpBtnTapped:(id) sender;
- (IBAction) loginBtnTapped:(id) sender;
- (IBAction) facebookBtnTapped:(id) sender;
- (IBAction) twitterBtnTapped:(id) sender;
@end
