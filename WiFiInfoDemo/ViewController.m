//
//  ViewController.m
//  WiFiInfoDemo
//
//  Created by dyw on 2017/2/28.
//  Copyright © 2017年 dyw. All rights reserved.
//

#import "ViewController.h"
#import "WiFiInfoTool.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //获取WiFi 信息，返回的字典中包含了WiFi的名称、路由器的Mac地址、还有一个Data(转换成字符串打印出来是wifi名称)
    NSDictionary *infoDict = [WiFiInfoTool fetchSSIDInfo];
    NSLog(@"->%@", infoDict);
    //获取WiFi的名称
    NSString *nameStr = [WiFiInfoTool fetchWiFiName];
    NSLog(@"->%@", nameStr);
    /** 获取网关 */
    NSString *ipStr = [WiFiInfoTool getGatewayIpForCurrentWiFi];
    NSLog(@"->%@", ipStr);
    /** 获取本机在WiFi环境下的IP地址 */
    NSString *wifiAdd = [WiFiInfoTool getLocalIPAddressForCurrentWiFi];
    NSLog(@"->%@", wifiAdd);
    /** 广播地址、子网掩码、端口等，组装成一个字典。 */
    NSDictionary *wifiInfoDict = [WiFiInfoTool getLocalInfoForCurrentWiFi];
    NSLog(@"->%@", wifiInfoDict);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
