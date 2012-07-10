//
//  JTEnumMappings.h
//  JTObjectMapping
//
//  Created by Hans Magnus Inderberg on 7/10/12.
//
//

#import <Foundation/Foundation.h>

@protocol JTEnumMappings <NSObject>

- (NSString *)key;
- (NSDictionary *)enumMap;
- (Class)targetClass;

@end

@interface JTEnumMappings : NSObject <JTEnumMappings>

@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSDictionary *enumMap;
@property (nonatomic, assign) Class targetClass;

+ (id <JTEnumMappings>)mappingWithKey:(NSString *)aKey
                          targetClass:(Class)aClass
                              enumMap:(NSDictionary *)aEnumMap;

@end