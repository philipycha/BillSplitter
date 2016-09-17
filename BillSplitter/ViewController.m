//
//  ViewController.m
//  BillSplitter
//
//  Created by Philip Ha on 2016-09-17.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *peopleSlider;
@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UILabel *perPersonLabel;
@property (weak, nonatomic) IBOutlet UILabel *peopleLabel;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)calculateBill{
    
    float splitAmount = self.billAmount.text.floatValue / self.peopleSlider.value;
    
    self.perPersonLabel.text = [NSString stringWithFormat:@"$%.2f per person", splitAmount];
    self.peopleLabel.text = [NSString stringWithFormat:@"%.f people", self.peopleSlider.value];
    
    
}
- (IBAction)numberOfPeople:(id)sender {
    self.peopleLabel.text = [NSString stringWithFormat:@"%.f people", self.peopleSlider.value];
 //   [self calculateBill];
    [self.billAmount endEditing:YES];
    
    
}
- (IBAction)calculateButtonPressed:(UIButton *)sender {
    
    [self calculateBill];
    
}


@end
