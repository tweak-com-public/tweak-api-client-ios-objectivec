#import "TWCustomer.h"

@implementation TWCustomer

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"realm": @"realm", @"username": @"username", @"credentials": @"credentials", @"challenges": @"challenges", @"email": @"email", @"emailVerified": @"emailVerified", @"status": @"status", @"created": @"created", @"lastUpdated": @"lastUpdated", @"id": @"_id", @"designs": @"designs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"lastName", @"realm", @"username", @"credentials", @"challenges", @"emailVerified", @"status", @"created", @"lastUpdated", @"_id", @"designs"];
  return [optionalProperties containsObject:propertyName];
}

@end
