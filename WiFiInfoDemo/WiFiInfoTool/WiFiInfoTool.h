//
//  WiFiTool.h
//  wifiTest
//
//  Created by dyw on 2017/2/27.
//  Copyright © 2017年 dyw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WiFiInfoTool : NSObject

/**
 * 获取WiFi 信息，返回的字典中包含了WiFi的名称、路由器的Mac地址、还有一个Data(转换成字符串打印出来是wifi名称)
 */
+ (NSDictionary *)fetchSSIDInfo;

/** 获取WiFi的名称 */
+ (NSString *)fetchWiFiName;

/** 获取网关 */
+ (NSString *)getGatewayIpForCurrentWiFi;

/** 获取本机在WiFi环境下的IP地址 */
+ (NSString *)getLocalIPAddressForCurrentWiFi;

/** 广播地址、子网掩码、端口等，组装成一个字典。 */
+ (NSMutableDictionary *)getLocalInfoForCurrentWiFi;

@end
