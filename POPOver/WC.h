//
//  WC.h
//  POPOver
//
//  Created by admin on 17/2/7.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LoginDetailVC.h"
@interface WC : NSWindowController<NSPopoverDelegate>

@property (weak) IBOutlet NSButton *loginBtn;
- (IBAction)login:(id)sender;
@property (strong, nonatomic) NSPopover *popover;

@end
