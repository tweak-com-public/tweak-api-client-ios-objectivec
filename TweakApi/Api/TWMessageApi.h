#import <Foundation/Foundation.h>
#import "TWInlineResponse2003.h"
#import "TWApi.h"

/**
* tweak-api
* Tweak API to integrate with all the Tweak services.  You can find out more about Tweak      at <a href='https://www.tweak.com'>https://www.tweak.com</a>, #tweak.
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface TWMessageApi: NSObject <TWApi>

extern NSString* kTWMessageApiErrorDomain;
extern NSInteger kTWMessageApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// 
/// 
///
/// @param msg  (optional)
/// 
///  code:200 message:"Request was successful"
///
/// @return TWInlineResponse2003*
-(NSNumber*) messageGreetWithMsg: (NSString*) msg
    completionHandler: (void (^)(TWInlineResponse2003* output, NSError* error)) handler;



@end
