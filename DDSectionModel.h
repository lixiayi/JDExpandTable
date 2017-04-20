//
//  DDSectionModel.h
//  JDExpandTable
//
//  Created by xiaoyi li on 17/4/20.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDCellModel.h"

@interface DDSectionModel : NSObject


/**
 头部
 */
@property (nonatomic, copy) NSString *sectionTitle;

/**
 是否展开
 */
@property (nonatomic) BOOL isExpanded;

/**
 cell的模型
 */
@property (nonatomic, strong) NSArray<DDCellModel *> *cellModels;


+ (void)loadData:(void(^)(NSArray *models))finished;



@end
