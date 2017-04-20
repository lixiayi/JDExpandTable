//
//  MoreTableViewCell.m
//  JDExpandTable
//
//  Created by xiaoyi li on 17/4/20.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

#import "MoreTableViewCell.h"

@implementation MoreTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCellModel:(DDCellModel *)cellModel {
    _cellModel = cellModel;
    self.textLabel.text = cellModel.title;
}

@end
