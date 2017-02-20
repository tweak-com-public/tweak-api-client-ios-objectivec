#import "TWCategory.h"

@implementation TWCategory

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"description": @"_description", @"id": @"_id", @"categoryId": @"categoryId", @"parentId": @"parentId", @"designId": @"designId", @"children": @"children", @"parent": @"parent" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"_id", @"categoryId", @"parentId", @"designId", @"children", @"parent"];
  return [optionalProperties containsObject:propertyName];
}

@end
