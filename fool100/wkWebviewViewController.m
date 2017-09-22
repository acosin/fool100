//
//  wkWebviewViewController.m
//  fool100
//
//  Created by  on 9/20/17.
//  Copyright © 2017 zt2. All rights reserved.
//
#import <WebKit/WebKit.h>
#import "wkWebviewViewController.h"
#import "WKWebViewEx.h"
#import "UIViewEx.h"

@interface wkWebviewViewController ()
- (IBAction)onTouchBack:(id)sender;
@property WKWebViewEx *wkv ;
@end

@implementation wkWebviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect rect = self.view.bounds;
    rect.size.height -= 400;
    
#if f
    WKWebViewEx *wkv = [[WKWebViewEx alloc] initWithFrame:rect];
    [self.view addSubview:wkv];
    wkv.backgroundColor = [UIColor redColor];
#else
    WKWebViewConfiguration* config = [[WKWebViewConfiguration alloc] init];
    config.preferences = [WKPreferences new];
    config.preferences.minimumFontSize = 10;
    config.preferences.javaScriptEnabled = YES;
    config.preferences.javaScriptCanOpenWindowsAutomatically = YES;
    _wkv = [[WKWebViewEx alloc] initWithFrame:rect configuration:config];
    NSURL* url = [[NSURL alloc] initWithString:@"https://www.baidu.com"];
    NSURLRequest* req = [[NSURLRequest alloc] initWithURL:url];
    [_wkv loadRequest:req];
    [self.view addSubview:_wkv];
    CGRect rect2 = rect;
    rect2.size.height = 100;
    rect2.origin.y = self.view.bounds.size.height - 400;
//    UIViewEx* mask = [[UIViewEx alloc] initWithFrame:rect2];
//    [_wkv addSubview:mask];
//    mask.backgroundColor = [UIColor whiteColor];
#endif
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)onTouchBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
//    [self.wkv becomeFirstResponder];
}
@end
