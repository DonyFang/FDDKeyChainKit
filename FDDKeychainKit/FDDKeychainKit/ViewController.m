//
//  ViewController.m
//  FDDKeychainKit
//
//  Created by 方冬冬 on 2017/7/26.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "ViewController.h"
#import "FDDKeyChainKit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}
- (IBAction)login:(id)sender {
    
    FDDKeyChainKit *keychain = [[FDDKeyChainKit alloc] initWithIdentifier:@"want"];
    
    if (!self.username.text || !self.password.text) {
        return;
    }
    [keychain saveUsername:self.username.text andPassword:self.password.text forServiceName:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
