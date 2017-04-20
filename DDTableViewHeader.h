//
//  DDTableViewHeader.h
//  JDExpandTable
//
//  Created by xiaoyi li on 17/4/20.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDSectionModel.h"

typedef void(^HeaderViewClickedBack)(BOOL);

@interface DDTableViewHeader : UITableViewHeaderFooterView

@property (nonatomic, copy) HeaderViewClickedBack headerClickedBack;

@property (nonatomic, strong) DDSectionModel *sectionModel;



@end
