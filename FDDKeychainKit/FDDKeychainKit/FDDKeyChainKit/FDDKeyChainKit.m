//
//  FDDKeyChainKit.m
//  FDDKeychainKit
//
//  Created by 方冬冬 on 2017/7/26.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "FDDKeyChainKit.h"
//#import "KeychainItemWrapper.h"
@interface  FDDKeyChainKit()

@property(nonatomic,strong)KeychainItemWrapper *chainItem;

@end
@implementation FDDKeyChainKit

- (instancetype)initWithIdentifier:(NSString *)identifier{
    
    self = [super init];
    if (self) {
        [self initProperty:identifier];
    }
    return self;
}

- (void)initProperty:(NSString *)identifier{

    self.chainItem = [[KeychainItemWrapper alloc] initWithIdentifier:identifier accessGroup:nil];
}

- (void)saveUsername:(NSString *)username andPassword:(NSString *)password forServiceName: (NSString *)serviceName{
    if (!username || !password) {
        return;
    }
    [self.chainItem setObject:username forKey:(__bridge id)(kSecAttrAccount)];// 2
    [self.chainItem setObject:password forKey:(__bridge id)(kSecValueData)];// 3
}

- (NSString *)getPasswordServiceName{
    
    if (![self.chainItem objectForKey:(__bridge id)(kSecValueData)]) {
        return nil;
    }
    return  [self.chainItem objectForKey:(__bridge id)(kSecValueData)];

}

- (NSString *)getUserName{
    if (![self.chainItem objectForKey:(__bridge id)(kSecAttrAccount)]) {
        return nil;
    }
    return  [self.chainItem objectForKey:(__bridge id)(kSecAttrAccount)];
}

- (void)deleteAllInformation:(BOOL) isSureDelete{
    if (isSureDelete) {
        //清空设置
        [self.chainItem resetKeychainItem];
    }
}

@end
