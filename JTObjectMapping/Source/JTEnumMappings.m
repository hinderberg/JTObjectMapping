//
//  JTEnumMappings.m
//  JTObjectMapping
//
//  Created by Hans Magnus Inderberg on 7/10/12.
//
//

#import "JTEnumMappings.h"

@implementation JTEnumMappings
@synthesize key, enumMap, targetClass;

+ (id <JTEnumMappings>)mappingWithKey:(NSString *)aKey
                       targetClass:(Class)aClass
                           enumMap:(NSDictionary *)aEnumMap {
    JTEnumMappings *obj = [[JTEnumMappings alloc] init];
    obj.key = aKey;
    obj.enumMap = aEnumMap;
    obj.targetClass = aClass;
    return [obj autorelease];
}


- (void)dealloc {
    self.enumMap = nil;
    self.key = nil;
    [super dealloc];
}


@end
