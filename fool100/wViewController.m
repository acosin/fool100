//
//  wViewController.m
//  fool100
//
//  Created by  on 9/20/17.
//  Copyright © 2017 zt2. All rights reserved.
//

#import "wViewController.h"

@interface wViewController ()
@property (weak, nonatomic) IBOutlet UIButton *back;
- (IBAction)ontouchinside:(id)sender;

@end

@implementation wViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.view.backgroundColor = [UIColor redColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)viewWillAppear:(BOOL)animated
{
    [self becomeFirstResponder];
}
- (IBAction)ontouchinside:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
