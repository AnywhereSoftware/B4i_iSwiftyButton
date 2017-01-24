
#import <Foundation/Foundation.h>
#import "iCore.h"

//~dependson: SwiftyButton.framework.swift.3
//~version: 1.01
//~shortname: PressableButton
//~DesignerProperty: Key: buttonColor, DisplayName: Button Color, FieldType: Color, DefaultValue: 0xff30AACC
//~DesignerProperty: Key: shadowColor, DisplayName: Shadow Color, FieldType: Color, DefaultValue: 0xff007182
//~DesignerProperty: Key: depth, DisplayName: Depth, FieldType: Float, DefaultValue: 0.7, MinRange: 0, MaxRange: 1
//~DesignerProperty: Key: shadowHeight, DisplayName: Shadow Height, FieldType: Float, DefaultValue: 3
//~ObjectWrapper:UIView*
@interface B4IPressableButtonWrapper : B4IViewWrapper <B4IDesignerCustomView>
- (void)DesignerCreateView:(B4IPanelWrapper *)base :(B4ILabelWrapper *)lw :(B4IMap *)props;
/**
 * Returns the base panel.
 */
@property (nonatomic, readonly)B4IViewWrapper *BaseView;
@property (nonatomic)NSString *Text;
@end
