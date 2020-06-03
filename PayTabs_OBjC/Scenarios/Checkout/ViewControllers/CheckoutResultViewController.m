//
//  CheckoutResultViewController.m
//  PayTabs_OBjC
//
//  Created by Mohammed Salah on 03/06/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

#import "CheckoutResultViewController.h"

@interface CheckoutResultViewController ()

@property (weak, nonatomic) IBOutlet UILabel *responseCodeLbl;
@property (weak, nonatomic) IBOutlet UILabel *responseResultLbl;
@property (weak, nonatomic) IBOutlet UILabel *tknEmailLbl;
@property (weak, nonatomic) IBOutlet UILabel *tknPassLbl;
@property (weak, nonatomic) IBOutlet UILabel *tokenLbl;




@end

@implementation CheckoutResultViewController

@synthesize code, result, pass, token, email;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _responseCodeLbl.text = code;
    _responseResultLbl.text = result;
    _tknEmailLbl.text = email;
    _tknPassLbl.text = pass;
    _tokenLbl.text = token;
}


- (IBAction) didPressDone:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
