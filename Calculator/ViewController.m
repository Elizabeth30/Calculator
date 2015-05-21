//
//  ViewController.m
//  Calculator
//
//  Created by Liz Sanchez on 5/13/15.
//  Copyright (c) 2015 Liz Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (weak, nonatomic) IBOutlet UILabel *lblanswer;


@end

@implementation ViewController
-(NSInteger) getInterger: (UITextField *)txt{
    NSString* number1 = [txt text];
    
    NSInteger interger1 = [number1 integerValue];
    return interger1;
}
-(bool) isValid:(NSString*) s{
    NSCharacterSet* alphaNums = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet* inStringSet = [NSCharacterSet characterSetWithCharactersInString:s];
    return [alphaNums isSupersetOfSet:inStringSet];
}
- (IBAction)button:(id)sender {
    
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
        if ([self isValid: numbervalue1]&&[self isValid: numbervalue2]){
            NSInteger number1 = [numbervalue1 integerValue];
            NSInteger number2 = [numbervalue2 integerValue];
            NSInteger Answer = number1 + number2;
            NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
            [[self lblanswer] setText:inStr];

    }
        else {
            [[self lblanswer] setText:@"error"];
  }

}
- (IBAction)Subtract:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    if ([self isValid: numbervalue1]&&[self isValid: numbervalue2]){
    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 - number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];
    
}
    else {
        [[self lblanswer] setText:@"error"];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Multiply:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    if ([self isValid: numbervalue1]&&[self isValid: numbervalue2]){

        NSInteger number1 = [numbervalue1 integerValue];
        NSInteger number2 = [numbervalue2 integerValue];
        NSInteger Answer = number1 * number2;
        NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
        [[self lblanswer] setText:inStr];
    
    }
    else {
        [[self lblanswer] setText:@"error"];
    }
}
- (IBAction)Divide:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    if ([self isValid: numbervalue1]&&[self isValid: numbervalue2]){
        

    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 / number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];
    
}
    else {
        [[self lblanswer] setText:@"error"];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
