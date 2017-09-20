//
//  UIViewEx.m
//  fool100
//
//  Created by  on 9/20/17.
//  Copyright © 2017 zt2. All rights reserved.
//

#import "UIViewEx.h"

@interface UIViewEx()<UIKeyInput>

@end
@implementation UIViewEx

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if ([self isFirstResponder])
        [self resignFirstResponder];
    else
        [self becomeFirstResponder];
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)insertText:(NSString *)text
{
    
}

-(BOOL)hasText
{
    return NO;
}

-(void)deleteBackward
{
    
}
@end
