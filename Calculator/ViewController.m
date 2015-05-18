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
- (IBAction)button:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 + number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];

}
- (IBAction)Subtract:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 - number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Multiply:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 * number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];
    
}
- (IBAction)Divide:(id)sender {
    NSString* numbervalue1 = [[self txt1] text];
    NSString* numbervalue2 = [[self txt2] text];
    NSInteger number1 = [numbervalue1 integerValue];
    NSInteger number2 = [numbervalue2 integerValue];
    NSInteger Answer = number1 / number2;
    NSString *inStr = [NSString stringWithFormat: @"%ld", Answer];
    [[self lblanswer] setText:inStr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
