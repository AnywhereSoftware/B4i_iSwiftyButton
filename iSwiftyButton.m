//
//  iSwiftyButton.m
//  iSwiftyButton
//
//  Created by b4j on 22/01/2017.
//  Copyright © 2017 Anywhere Software. All rights reserved.
//
#import "iSwiftyButton.h"
#import "SwiftyButton-Swift.h"

@implementation B4IPressableButtonWrapper
#define OBJ ((PressableButton *) self.object)
+ (Class)getClass {
    return [PressableButton class];
}
- (void)DesignerCreateView:(B4IPanelWrapper *)base :(B4ILabelWrapper *)lw :(B4IMap *)props {
    self.object = [[PressableButton alloc]initWithFrame:[(UIView*)base.object frame]];
    [base AddView:OBJ :0 :0 :base.Width :base.Height];
    self.Text = lw.Text;
    UIColor* buttonColor = [[B4I shared] ColorToUIColor:[(NSNumber *)[props Get:@"buttonColor"] intValue]];
    UIColor* shadowColor = [[B4I shared] ColorToUIColor:[(NSNumber *)[props Get:@"shadowColor"] intValue]];
    OBJ.depth = [(NSNumber *)[props Get:@"depth"] doubleValue];
    OBJ.shadowHeight = [(NSNumber *)[props Get:@"shadowHeight"] floatValue];
    [OBJ SetColorsWithButton:buttonColor shadow:shadowColor];
    OBJ.titleLabel.font = lw.Font.object;
    [self innerInitialize:[B4IObjectWrapper getBI:base.object] :[B4IObjectWrapper getEventName:base.object]
            :true];

}
- (NSString *)Text {
    return [[B4I shared]returnString: [OBJ titleForState:UIControlStateNormal]];
}
- (void)setText:(NSString *)Text {
    [OBJ setTitle:Text forState:UIControlStateNormal];
}

- (B4IViewWrapper *)BaseView {
    B4IWeakRef *ref = [B4IObjectWrapper getMap:OBJ][@"base"];
    return [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:ref.Value];
}


- (void)_initialize:(B4I *)bi :(NSObject *)target :(NSString *)EventName {

}

- (void)base_resize:(CGFloat)width :(CGFloat)height {
    [OBJ SetLayoutAnimated:0 :1 :0 :0 :width :height];
}



@end
