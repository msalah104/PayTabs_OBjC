//
//  PTConfigurationsViewController.m
//  PayTabs_OBjC
//
//  Created by Mohammed Salah on 03/06/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

#import "PTConfigurationsViewController.h"
#import "CheckoutViewController.h"

@interface PTConfigurationsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *customerNameTF;
@property (weak, nonatomic) IBOutlet UITextField *currencyCodeITF;
@property (weak, nonatomic) IBOutlet UITextField *taxAmountTF;
@property (weak, nonatomic) IBOutlet UITextField *amountTF;
@property (weak, nonatomic) IBOutlet UITextField *sdkLanguageTF;
@property (weak, nonatomic) IBOutlet UITextField *shippingAddressTF;
@property (weak, nonatomic) IBOutlet UITextField *shippingCityTF;
@property (weak, nonatomic) IBOutlet UITextField *shippingCountryTF;
@property (weak, nonatomic) IBOutlet UITextField *shippingStateTF;
@property (weak, nonatomic) IBOutlet UITextField *shippingZIPCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *billingAddressTF;
@property (weak, nonatomic) IBOutlet UITextField *billingCityTF;
@property (weak, nonatomic) IBOutlet UITextField *billingCountryTF;
@property (weak, nonatomic) IBOutlet UITextField *billingStateTF;
@property (weak, nonatomic) IBOutlet UITextField *billingZIPCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *orderIDTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTF;
@property (weak, nonatomic) IBOutlet UITextField *customerEmailTF;
@property (weak, nonatomic) IBOutlet UITextField *assigneeCodeTF;


@end

@implementation PTConfigurationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setDummyData];
    
}

-(void) setDummyData {
    _customerNameTF.text = @"PayTabs Demo App";
    _currencyCodeITF.text = @"USD";
    _taxAmountTF.text = @"0.0";
    _amountTF.text = @"5.0";
    _sdkLanguageTF.text = @"en";
    _shippingAddressTF.text = @"Manama";
    _shippingCityTF.text = @"Manama";
    _shippingCountryTF.text = @"BHR";
    _shippingStateTF.text = @"Manama";
    _shippingZIPCodeTF.text = @"123456";
    _billingAddressTF.text = @"Manama";
    _billingCityTF.text = @"Manama";
    _billingCountryTF.text = @"BHR";
    _billingStateTF.text = @"Manama";
    _billingZIPCodeTF.text = @"123456";
    _orderIDTF.text = @"12345";
    _phoneNumberTF.text = @"0097333109781";
    _customerEmailTF.text = @"rhegazy@paytabs.com";
    _assigneeCodeTF.text = @"SDK";
}

- (IBAction)didPressContinue:(id)sender {
    UINavigationController *checkoutNC = [[self storyboard] instantiateViewControllerWithIdentifier:@"CheckoutViewController"];
    CheckoutViewController *checkoutVC = [[checkoutNC viewControllers] firstObject];
    
    // Pass the configuration data
    checkoutVC.customerName = _customerNameTF.text;
    checkoutVC.amount = (_amountTF.text).floatValue;
    checkoutVC.taxAmount = (_taxAmountTF.text).floatValue;
    checkoutVC.currencyCode = _currencyCodeITF.text;
    checkoutVC.sdkLanguage = _sdkLanguageTF.text;
    checkoutVC.shippingAddress = _shippingAddressTF.text;
    checkoutVC.shippingCity = _shippingCityTF.text;
    checkoutVC.shippingCountry = _shippingCountryTF.text;
    checkoutVC.shippingState = _shippingStateTF.text;
    checkoutVC.shippingZIPCode = _shippingZIPCodeTF.text;
    checkoutVC.billingAddress = _billingAddressTF.text;
    checkoutVC.billingCity = _billingCityTF.text;
    checkoutVC.billingCountry = _billingCountryTF.text;
    checkoutVC.billingState = _billingStateTF.text;
    checkoutVC.billingZIPCode = _billingZIPCodeTF.text;
    checkoutVC.orderID = _orderIDTF.text;
    checkoutVC.phoneNumber = _phoneNumberTF.text;
    checkoutVC.customerEmail = _customerEmailTF.text;
    checkoutVC.assigneeCode = _assigneeCodeTF.text;
    
    [self presentViewController:checkoutNC animated:false completion:nil];
}


@end
