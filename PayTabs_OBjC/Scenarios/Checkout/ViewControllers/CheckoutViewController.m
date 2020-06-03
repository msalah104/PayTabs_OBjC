//
//  ChechoutViewController.m
//  PayTabs_OBjC
//
//  Created by Mohammed Salah on 03/06/2020.
//  Copyright © 2020 MSalah. All rights reserved.
//

#import "CheckoutViewController.h"
#import "CheckoutResultViewController.h"
#import <paytabs-iOS/paytabs_iOS.h>
#import <MBProgressHUD/MBProgressHUD.h>
@interface CheckoutViewController ()

@end

@implementation CheckoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [MBProgressHUD showHUDAddedTo:[self view] animated:true];
    [self setupPayTabsSDK];
}

- (void) setupPayTabsSDK {
    
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"Resources" withExtension:@"bundle"]];
    PTFWInitialSetupViewController *view = [[PTFWInitialSetupViewController alloc]
                                            initWithBundle:bundle
                                            andWithViewFrame:self.view.frame
                                            andWithAmount: _amount
                                            andWithCustomerTitle: _customerName
                                            andWithCurrencyCode: _currencyCode
                                            andWithTaxAmount: _taxAmount
                                            andWithSDKLanguage: _sdkLanguage
                                            andWithShippingAddress: _shippingAddress
                                            andWithShippingCity: _shippingCity
                                            andWithShippingCountry: _shippingCountry
                                            andWithShippingState: _shippingState
                                            andWithShippingZIPCode: _shippingZIPCode
                                            andWithBillingAddress: _billingAddress
                                            andWithBillingCity: _billingCity
                                            andWithBillingCountry: _billingCountry
                                            andWithBillingState: _billingState
                                            andWithBillingZIPCode: _billingZIPCode
                                            andWithOrderID: _orderID
                                            andWithPhoneNumber: _phoneNumber
                                            andWithCustomerEmail: _customerEmail
                                            andIsTokenization:NO
                                            andIsPreAuth:NO
                                            andWithMerchantEmail:@"mohamed.salah.2011@gmail.com"
                                            andWithMerchantSecretKey:@"Dk39o6jFXqkfBwGD0OQLcOZjR5UAkUaYee8DkrjiRDys9f693XVfMUzD0uelopjDDrgYSzhKdPdm4jw7hrn3mXHnrWIQl1tZtKYl"
                                            andWithAssigneeCode:_assigneeCode
                                            andWithThemeColor:[UIColor redColor]
                                            andIsThemeColorLight:YES];
    
    view.didReceiveBackButtonCallback = ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    };
    
    view.didStartPreparePaymentPage = ^{
        // Start Prepare Payment Page
        // Show loading indicator
    };
    
    view.didFinishPreparePaymentPage = ^{
        [MBProgressHUD hideHUDForView:[self view] animated:true];
    };
    
    view.didReceiveFinishTransactionCallback = ^(int responseCode, NSString * _Nonnull result, int transactionID, NSString * _Nonnull tokenizedCustomerEmail, NSString * _Nonnull tokenizedCustomerPassword, NSString * _Nonnull token, BOOL transactionState) {
        NSLog(@"Response Code: %i", responseCode);
        NSLog(@"Response Result: %@", result);
        
        // In Case you are using tokenization
        NSLog(@"Tokenization Cutomer Email: %@", tokenizedCustomerEmail);
        NSLog(@"Tokenization Customer Password: %@", tokenizedCustomerPassword);
        NSLog(@"TOkenization Token: %@", token);
        
        CheckoutResultViewController *resultVC = (CheckoutResultViewController *)[[self storyboard] instantiateViewControllerWithIdentifier:@"CheckoutResultViewController"];
        
        resultVC.code = [@(responseCode) stringValue];
        resultVC.result = result;
        resultVC.email = tokenizedCustomerEmail;
        resultVC.pass = tokenizedCustomerPassword;
        resultVC.token = token;
        
        [self.navigationController showViewController:resultVC sender:nil];
        [self dismissViewControllerAnimated:true completion:nil];
        
    };
    
    [self presentViewController:view animated:true completion:nil];
}

@end
