//
//  WC.m
//  POPOver
//
//  Created by admin on 17/2/7.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "WC.h"

@interface WC ()

@end

@implementation WC

- (void)windowDidLoad {
    [super windowDidLoad];
    LoginDetailVC *vc = [[LoginDetailVC alloc] initWithNibName:@"LoginDetailVC" bundle:nil];
    self.popover = [[NSPopover alloc] init];
    self.popover.delegate = self;
    self.popover.contentViewController = vc;
    
}

- (IBAction)login:(id)sender {
    if (self.popover.shown)
        [self closePopover:sender];
    else
        [self showPopover:sender];
}
- (void)showPopover:(id)sender
{
    [self.popover showRelativeToRect:self.loginBtn.bounds ofView:self.loginBtn preferredEdge:NSMinYEdge];
}

- (void)closePopover:(id)sender
{
    [self.popover performClose:sender];
}
#pragma mark - NSPopoverDelegate

- (void)popoverWillShow:(NSNotification *)notification
{
    LoginDetailVC *vc = (LoginDetailVC*)self.popover.contentViewController;
//    [vc setUpUI];
}
@end
