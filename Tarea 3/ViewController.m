//
//  ViewController.m
//  Tarea 3
//
//  Created by MacL on 18/09/17.
//  Copyright © 2017 MacL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.redValue = 127.5;
    self.greenValue = 127.5;
    self.blueValue = 127.5;
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeColor {
    self.circleImage.tintColor = RGB(self.redValue, self.greenValue, self.blueValue);
     //self.circleImage.tintColorDidChange();
}

- (IBAction)onColorSliderRed:(id)sender {
    self.redValue = self.sliderRedValue.value;
    
    UIColor *color = RGB(self.redValue, self.greenValue, self.blueValue);
    
    //self.changeColor();
    self.circleImage.image = [self.circleImage.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self.circleImage setTintColor:color];
    
    //self.circleImage.tintColor = RGB(self.redValue, self.greenValue, self.blueValue);
}

- (IBAction)onColorSliderGreen:(id)sender {
    self.greenValue = self.sliderGreenValue.value;
    
    //self.colorChanged();
    self.circleImage.backgroundColor = RGB(self.redValue, self.greenValue, self.blueValue);
}

- (IBAction)onColorSliderBlue:(id)sender {
    self.blueValue = self.sliderBlueValue.value;
    
    //self.colorChanged();
    self.circleImage.backgroundColor = RGB(self.redValue, self.greenValue, self.blueValue);
}



@end
