//
//  WKWebViewEx.m
//  fool100
//
//  Created by  on 9/20/17.
//  Copyright © 2017 zt2. All rights reserved.
//

#import "WKWebViewEx.h"

@interface WKWebViewEx()<UIKeyInput>

@end
@implementation WKWebViewEx

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    return self;
}

-(BOOL)hasText
{
    return NO;
}
-(void)deleteBackward
{
    
}
-(void)insertText:(NSString *)text
{
    
}



-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if ([self isFirstResponder])
        [self resignFirstResponder];
    else
        [self becomeFirstResponder];
}
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    if ([self isFirstResponder])
//        [self resignFirstResponder];
//    else
//        [self becomeFirstResponder];
//}
-(void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event
{
    if ([self isFirstResponder])
        [self resignFirstResponder];
    else
        [self becomeFirstResponder];
}
@end
