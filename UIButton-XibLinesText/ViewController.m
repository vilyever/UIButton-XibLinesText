//
//  ViewController.m
//  UIButton-XibLinesText
//
//  Created by FTET on 15/8/12.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "ViewController.h"

#import "UIButton+VDXibLinesText.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.testButton.vd_xibLinesTextState = UIControlStateHighlighted | UIControlStateDisabled;
    [self.testButton setTitle:@"modify" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDidTouchUpInside:(UIButton *)sender {
    [sender setSelected:!sender.isSelected];
}

@end
