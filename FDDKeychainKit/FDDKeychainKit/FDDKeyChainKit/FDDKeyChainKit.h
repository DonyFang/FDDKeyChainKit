//
//  FDDKeyChainKit.h
//  FDDKeychainKit
//
//  Created by 方冬冬 on 2017/7/26.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KeychainItemWrapper.h"

@interface FDDKeyChainKit : NSObject



/**
 

 @param identifier 标识
 @return
 */
- (instancetype)initWithIdentifier:(NSString *)identifier;


/**
 类方方法。存储信息
 @param username 用户名
 @param password 密码
 @param serviceName 服务名。自定义
 */
- (void) saveUsername: (NSString *) username andPassword: (NSString *) password forServiceName: (NSString *) serviceName;



/**
 

 @return 返回用户密码
 */
- (NSString *)getPasswordServiceName;

/**
 
 
 @return 返回用户名
 */
- (NSString *)getUserName;



/**
 

 @param isSureDelete 是否删除所有的保存信息
 */
- (void)deleteAllInformation:(BOOL) isSureDelete;


@end
