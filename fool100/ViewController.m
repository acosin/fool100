//
//  ViewController.m
//  fool100
//
//  Created by  on 9/20/17.
//  Copyright © 2017 zt2. All rights reserved.
//

#import "ViewController.h"
#import "wViewController.h"

@interface ViewController ()
- (IBAction)ouTouchUpOutside:(id)sender;
- (IBAction)ontouchdown:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view becomeFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ouTouchUpOutside:(id)sender {
   BOOL ret = [self.view becomeFirstResponder];
    NSLog(@"ret = %d", ret);
}

- (IBAction)ontouchdown:(id)sender {
//    BOOL ret = [self.view becomeFirstResponder];
//    NSLog(@"ret = %d", ret);
    wViewController *wvc = [[wViewController alloc] initWithNibName:@"wViewController" bundle:nil];
    [self presentViewController:wvc animated:YES completion:^{
        
    }];
}
@end
