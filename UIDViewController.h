//
//  UIDViewController.h
//  CheckYoID
//
//  Created by nataliepo on 6/17/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIDViewController : UIViewController {
    IBOutlet UILabel * uidLabel;
}
@property (nonatomic, retain) UILabel * uidLabel;
+ (NSString *) getDeviceUID;


@end
