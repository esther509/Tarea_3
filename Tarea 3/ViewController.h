//
//  ViewController.h
//  Tarea 3
//
//  Created by MacL on 18/09/17.
//  Copyright © 2017 MacL. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGB(r, g, b) [UIColor colorWithRed:(float)r / 255.0 green:(float)g / 255.0 blue:(float)b / 255.0 alpha:1.0]

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *circleImage;
@property (weak, nonatomic) IBOutlet UISlider *sliderRedValue;
@property (weak, nonatomic) IBOutlet UISlider *sliderGreenValue;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlueValue;

@property float redValue;
@property float greenValue;
@property float blueValue;

- (void) changeColor;

@end

