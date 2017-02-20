# TWMessageApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messageGreet**](TWMessageApi.md#messagegreet) | **GET** /Messages/greet | 


# **messageGreet**
```objc
-(NSNumber*) messageGreetWithMsg: (NSString*) msg
        completionHandler: (void (^)(TWInlineResponse2003* output, NSError* error)) handler;
```



### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* msg = @"msg_example"; //  (optional)

TWMessageApi*apiInstance = [[TWMessageApi alloc] init];

[apiInstance messageGreetWithMsg:msg
          completionHandler: ^(TWInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWMessageApi->messageGreet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **msg** | **NSString***|  | [optional] 

### Return type

[**TWInlineResponse2003***](TWInlineResponse2003.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

