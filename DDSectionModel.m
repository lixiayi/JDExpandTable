//
//  DDSectionModel.m
//  JDExpandTable
//
//  Created by xiaoyi li on 17/4/20.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

#import "DDSectionModel.h"

@implementation DDSectionModel

+ (void)loadData:(void(^)(NSArray *models))finished {
    
    
    NSMutableArray *dataArr = [NSMutableArray array];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"headerList" ofType:@".plist"];
    
    NSDictionary *diaryList = [NSDictionary dictionaryWithContentsOfFile:path];
    
    
    NSArray *keyVal = diaryList.allKeys;
    NSArray *valueVal = diaryList.allValues;
    
    NSInteger keycount = keyVal.count;
    
    for (NSUInteger i = 0; i < keycount; i++) {
        DDSectionModel *sectionModel  =[[DDSectionModel alloc] init];
        sectionModel.isExpanded = NO;
        sectionModel.sectionTitle = keyVal[i];
        
        NSMutableArray *cellArr = [NSMutableArray array];
        
        NSUInteger valuCount = [valueVal[i] count];
        
        for (NSInteger j = 0; j <valuCount; j++) {
            DDCellModel *cellModel = [[DDCellModel alloc] init];
            cellModel.title = valueVal[i][j];
            [cellArr addObject:cellModel];
        }
        
        sectionModel.cellModels = cellArr;
        [dataArr addObject:sectionModel];
    }
    
    finished(dataArr);
    
}

@end
