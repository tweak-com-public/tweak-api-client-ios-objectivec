# TWTagApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tagCount**](TWTagApi.md#tagcount) | **GET** /Tags/count | Count instances of the model matched by where from the data source.
[**tagCreate**](TWTagApi.md#tagcreate) | **POST** /Tags | Create a new instance of the model and persist it into the data source.
[**tagCreateChangeStreamGetTagsChangeStream**](TWTagApi.md#tagcreatechangestreamgettagschangestream) | **GET** /Tags/change-stream | Create a change stream.
[**tagCreateChangeStreamPostTagsChangeStream**](TWTagApi.md#tagcreatechangestreamposttagschangestream) | **POST** /Tags/change-stream | Create a change stream.
[**tagDeleteById**](TWTagApi.md#tagdeletebyid) | **DELETE** /Tags/{id} | Delete a model instance by {{id}} from the data source.
[**tagExistsGetTagsidExists**](TWTagApi.md#tagexistsgettagsidexists) | **GET** /Tags/{id}/exists | Check whether a model instance exists in the data source.
[**tagExistsHeadTagsid**](TWTagApi.md#tagexistsheadtagsid) | **HEAD** /Tags/{id} | Check whether a model instance exists in the data source.
[**tagFind**](TWTagApi.md#tagfind) | **GET** /Tags | Find all instances of the model matched by filter from the data source.
[**tagFindById**](TWTagApi.md#tagfindbyid) | **GET** /Tags/{id} | Find a model instance by {{id}} from the data source.
[**tagFindOne**](TWTagApi.md#tagfindone) | **GET** /Tags/findOne | Find first instance of the model matched by filter from the data source.
[**tagPrototypeUpdateAttributesPatchTagsid**](TWTagApi.md#tagprototypeupdateattributespatchtagsid) | **PATCH** /Tags/{id} | Patch attributes for a model instance and persist it into the data source.
[**tagPrototypeUpdateAttributesPutTagsid**](TWTagApi.md#tagprototypeupdateattributesputtagsid) | **PUT** /Tags/{id} | Patch attributes for a model instance and persist it into the data source.
[**tagReplaceById**](TWTagApi.md#tagreplacebyid) | **POST** /Tags/{id}/replace | Replace attributes for a model instance and persist it into the data source.
[**tagReplaceOrCreate**](TWTagApi.md#tagreplaceorcreate) | **POST** /Tags/replaceOrCreate | Replace an existing model instance or insert a new one into the data source.
[**tagUpdateAll**](TWTagApi.md#tagupdateall) | **POST** /Tags/update | Update instances of the model matched by {{where}} from the data source.
[**tagUpsertPatchTags**](TWTagApi.md#tagupsertpatchtags) | **PATCH** /Tags | Patch an existing model instance or insert a new one into the data source.
[**tagUpsertPutTags**](TWTagApi.md#tagupsertputtags) | **PUT** /Tags | Patch an existing model instance or insert a new one into the data source.
[**tagUpsertWithWhere**](TWTagApi.md#tagupsertwithwhere) | **POST** /Tags/upsertWithWhere | Update an existing model instance or insert a new one into the data source based on the where criteria.


# **tagCount**
```objc
-(NSNumber*) tagCountWithWhere: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Count instances of the model matched by where from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Count instances of the model matched by where from the data source.
[apiInstance tagCountWithWhere:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagCreate**
```objc
-(NSNumber*) tagCreateWithData: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Create a new instance of the model and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWTag* data = [[TWTag alloc] init]; // Model instance data (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Create a new instance of the model and persist it into the data source.
[apiInstance tagCreateWithData:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWTag***](TWTag*.md)| Model instance data | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagCreateChangeStreamGetTagsChangeStream**
```objc
-(NSNumber*) tagCreateChangeStreamGetTagsChangeStreamWithOptions: (NSString*) options
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Create a change stream.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* options = @"options_example"; //  (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Create a change stream.
[apiInstance tagCreateChangeStreamGetTagsChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagCreateChangeStreamGetTagsChangeStream: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **options** | **NSString***|  | [optional] 

### Return type

**NSURL***

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagCreateChangeStreamPostTagsChangeStream**
```objc
-(NSNumber*) tagCreateChangeStreamPostTagsChangeStreamWithOptions: (NSString*) options
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Create a change stream.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* options = @"options_example"; //  (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Create a change stream.
[apiInstance tagCreateChangeStreamPostTagsChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagCreateChangeStreamPostTagsChangeStream: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **options** | **NSString***|  | [optional] 

### Return type

**NSURL***

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagDeleteById**
```objc
-(NSNumber*) tagDeleteByIdWithId: (NSString*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete a model instance by {{id}} from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Model id

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Delete a model instance by {{id}} from the data source.
[apiInstance tagDeleteByIdWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagDeleteById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 

### Return type

**NSObject***

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagExistsGetTagsidExists**
```objc
-(NSNumber*) tagExistsGetTagsidExistsWithId: (NSString*) _id
        completionHandler: (void (^)(TWInlineResponse2002* output, NSError* error)) handler;
```

Check whether a model instance exists in the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Model id

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance tagExistsGetTagsidExistsWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagExistsGetTagsidExists: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 

### Return type

[**TWInlineResponse2002***](TWInlineResponse2002.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagExistsHeadTagsid**
```objc
-(NSNumber*) tagExistsHeadTagsidWithId: (NSString*) _id
        completionHandler: (void (^)(TWInlineResponse2002* output, NSError* error)) handler;
```

Check whether a model instance exists in the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Model id

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance tagExistsHeadTagsidWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagExistsHeadTagsid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 

### Return type

[**TWInlineResponse2002***](TWInlineResponse2002.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagFind**
```objc
-(NSNumber*) tagFindWithFilter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWTag>* output, NSError* error)) handler;
```

Find all instances of the model matched by filter from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* filter = @"filter_example"; // Filter defining fields, where, include, order, offset, and limit (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Find all instances of the model matched by filter from the data source.
[apiInstance tagFindWithFilter:filter
          completionHandler: ^(NSArray<TWTag>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagFind: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**NSArray<TWTag>***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagFindById**
```objc
-(NSNumber*) tagFindByIdWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Find a model instance by {{id}} from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Model id
NSString* filter = @"filter_example"; // Filter defining fields and include (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Find a model instance by {{id}} from the data source.
[apiInstance tagFindByIdWithId:_id
              filter:filter
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagFindById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **filter** | **NSString***| Filter defining fields and include | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagFindOne**
```objc
-(NSNumber*) tagFindOneWithFilter: (NSString*) filter
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Find first instance of the model matched by filter from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* filter = @"filter_example"; // Filter defining fields, where, include, order, offset, and limit (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Find first instance of the model matched by filter from the data source.
[apiInstance tagFindOneWithFilter:filter
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagFindOne: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagPrototypeUpdateAttributesPatchTagsid**
```objc
-(NSNumber*) tagPrototypeUpdateAttributesPatchTagsidWithId: (NSString*) _id
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Tag id
TWTag* data = [[TWTag alloc] init]; // An object of model property name/value pairs (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance tagPrototypeUpdateAttributesPatchTagsidWithId:_id
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagPrototypeUpdateAttributesPatchTagsid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Tag id | 
 **data** | [**TWTag***](TWTag*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagPrototypeUpdateAttributesPutTagsid**
```objc
-(NSNumber*) tagPrototypeUpdateAttributesPutTagsidWithId: (NSString*) _id
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Tag id
TWTag* data = [[TWTag alloc] init]; // An object of model property name/value pairs (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance tagPrototypeUpdateAttributesPutTagsidWithId:_id
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagPrototypeUpdateAttributesPutTagsid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Tag id | 
 **data** | [**TWTag***](TWTag*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagReplaceById**
```objc
-(NSNumber*) tagReplaceByIdWithId: (NSString*) _id
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Replace attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Model id
TWTag* data = [[TWTag alloc] init]; // Model instance data (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Replace attributes for a model instance and persist it into the data source.
[apiInstance tagReplaceByIdWithId:_id
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagReplaceById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **data** | [**TWTag***](TWTag*.md)| Model instance data | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagReplaceOrCreate**
```objc
-(NSNumber*) tagReplaceOrCreateWithData: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Replace an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWTag* data = [[TWTag alloc] init]; // Model instance data (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Replace an existing model instance or insert a new one into the data source.
[apiInstance tagReplaceOrCreateWithData:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagReplaceOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWTag***](TWTag*.md)| Model instance data | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagUpdateAll**
```objc
-(NSNumber*) tagUpdateAllWithWhere: (NSString*) where
    data: (TWTag*) data
        completionHandler: (void (^)(TWInlineResponse2001* output, NSError* error)) handler;
```

Update instances of the model matched by {{where}} from the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* where = @"where_example"; // Criteria to match model instances (optional)
TWTag* data = [[TWTag alloc] init]; // An object of model property name/value pairs (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Update instances of the model matched by {{where}} from the data source.
[apiInstance tagUpdateAllWithWhere:where
              data:data
          completionHandler: ^(TWInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagUpdateAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWTag***](TWTag*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWInlineResponse2001***](TWInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagUpsertPatchTags**
```objc
-(NSNumber*) tagUpsertPatchTagsWithData: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWTag* data = [[TWTag alloc] init]; // Model instance data (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance tagUpsertPatchTagsWithData:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagUpsertPatchTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWTag***](TWTag*.md)| Model instance data | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagUpsertPutTags**
```objc
-(NSNumber*) tagUpsertPutTagsWithData: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWTag* data = [[TWTag alloc] init]; // Model instance data (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance tagUpsertPutTagsWithData:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagUpsertPutTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWTag***](TWTag*.md)| Model instance data | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagUpsertWithWhere**
```objc
-(NSNumber*) tagUpsertWithWhereWithWhere: (NSString*) where
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Update an existing model instance or insert a new one into the data source based on the where criteria.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* where = @"where_example"; // Criteria to match model instances (optional)
TWTag* data = [[TWTag alloc] init]; // An object of model property name/value pairs (optional)

TWTagApi*apiInstance = [[TWTagApi alloc] init];

// Update an existing model instance or insert a new one into the data source based on the where criteria.
[apiInstance tagUpsertWithWhereWithWhere:where
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWTagApi->tagUpsertWithWhere: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWTag***](TWTag*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

