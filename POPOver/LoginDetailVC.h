//
//  LoginDetailVC.h
//  POPOver
//
//  Created by admin on 17/2/7.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LoginDetailVC : NSViewController
- (IBAction)login:(id)sender;
@property (weak) IBOutlet NSProgressIndicator *progress;

@end
