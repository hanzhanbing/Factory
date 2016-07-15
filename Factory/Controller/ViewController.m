//
//  ViewController.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "ViewController.h"
#import "CellInfo.h"
#import "BaseCell.h"
#import "CellFactory.h"
#import "UIUtils.h"
#import "AdScrollView.h"
#import "AdDataModel.h"

//什么是工厂模式？
//批量创建有差异对象的方式

//什么时候用到工厂模式？
//1.编译时无法准确预期要创建的对象的类
//2.类想让其子类决定在运行时创建什么
//3.类有若干辅助类为其子类，而你想返回哪个子类这一信息局部化

//适配器模式：FMDB


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_cellInfoArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    
    [self addTableView];
    
}

#pragma mark - 加载UITableView
- (void)addTableView {
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

#pragma mark - 初始化数据
- (void)initData {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
    NSArray *dataArray = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    _cellInfoArray = [NSMutableArray array];
    
    for (int i=0; i<dataArray.count; i++) {
        CellInfo *cellInfo = [[CellInfo alloc] initWithDictionary:dataArray[i]];
        [_cellInfoArray addObject:cellInfo];
    }
    
}

#pragma mark - UITableView代理
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellInfo *cellInfo = _cellInfoArray[indexPath.row];
    return [CellFactory getCellHeight:cellInfo];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _cellInfoArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 100;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIImageView *adView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIUtils getWindowWidth], 100)];
    
    AdScrollView *scrollView = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIUtils getWindowWidth], 100)];
    AdDataModel *dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];
    scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    scrollView.imageNameArray = dataModel.imageNameArray;
    scrollView.PageControlShowStyle = UIPageControlShowStyleCenter;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
    [adView addSubview:scrollView];

    return adView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellInfo *cellInfo = _cellInfoArray[indexPath.row];
    //编译时、运行时
    NSString *cellIndentifier = [CellFactory getCellIdentifier:cellInfo];
    BaseCell *baseCell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!baseCell) {
        baseCell = [CellFactory getCell:cellInfo withCellStyle:UITableViewCellStyleDefault withCellIdentifier:cellIndentifier];
    }
    
    [baseCell setContentView:cellInfo];

    return baseCell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
