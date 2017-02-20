#import "TWDesign.h"

@implementation TWDesign

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"image": @"image", @"thumbnail": @"thumbnail", @"object": @"object", @"id": @"_id", @"customerId": @"customerId", @"tags": @"tags", @"categories": @"categories", @"customer": @"customer" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"image", @"thumbnail", @"object", @"_id", @"customerId", @"tags", @"categories", @"customer"];
  return [optionalProperties containsObject:propertyName];
}

@end
