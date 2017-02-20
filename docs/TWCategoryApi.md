# TWCategoryApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoryCount**](TWCategoryApi.md#categorycount) | **GET** /Categories/count | Count instances of the model matched by where from the data source.
[**categoryCreate**](TWCategoryApi.md#categorycreate) | **POST** /Categories | Create a new instance of the model and persist it into the data source.
[**categoryCreateChangeStreamGetCategoriesChangeStream**](TWCategoryApi.md#categorycreatechangestreamgetcategorieschangestream) | **GET** /Categories/change-stream | Create a change stream.
[**categoryCreateChangeStreamPostCategoriesChangeStream**](TWCategoryApi.md#categorycreatechangestreampostcategorieschangestream) | **POST** /Categories/change-stream | Create a change stream.
[**categoryDeleteById**](TWCategoryApi.md#categorydeletebyid) | **DELETE** /Categories/{id} | Delete a model instance by {{id}} from the data source.
[**categoryExistsGetCategoriesidExists**](TWCategoryApi.md#categoryexistsgetcategoriesidexists) | **GET** /Categories/{id}/exists | Check whether a model instance exists in the data source.
[**categoryExistsHeadCategoriesid**](TWCategoryApi.md#categoryexistsheadcategoriesid) | **HEAD** /Categories/{id} | Check whether a model instance exists in the data source.
[**categoryFind**](TWCategoryApi.md#categoryfind) | **GET** /Categories | Find all instances of the model matched by filter from the data source.
[**categoryFindById**](TWCategoryApi.md#categoryfindbyid) | **GET** /Categories/{id} | Find a model instance by {{id}} from the data source.
[**categoryFindOne**](TWCategoryApi.md#categoryfindone) | **GET** /Categories/findOne | Find first instance of the model matched by filter from the data source.
[**categoryPrototypeCountChildren**](TWCategoryApi.md#categoryprototypecountchildren) | **GET** /Categories/{id}/children/count | Counts children of Category.
[**categoryPrototypeCreateChildren**](TWCategoryApi.md#categoryprototypecreatechildren) | **POST** /Categories/{id}/children | Creates a new instance in children of this model.
[**categoryPrototypeDeleteChildren**](TWCategoryApi.md#categoryprototypedeletechildren) | **DELETE** /Categories/{id}/children | Deletes all children of this model.
[**categoryPrototypeDestroyByIdChildren**](TWCategoryApi.md#categoryprototypedestroybyidchildren) | **DELETE** /Categories/{id}/children/{fk} | Delete a related item by id for children.
[**categoryPrototypeFindByIdChildren**](TWCategoryApi.md#categoryprototypefindbyidchildren) | **GET** /Categories/{id}/children/{fk} | Find a related item by id for children.
[**categoryPrototypeGetChildren**](TWCategoryApi.md#categoryprototypegetchildren) | **GET** /Categories/{id}/children | Queries children of Category.
[**categoryPrototypeGetParent**](TWCategoryApi.md#categoryprototypegetparent) | **GET** /Categories/{id}/parent | Fetches belongsTo relation parent.
[**categoryPrototypeUpdateAttributesPatchCategoriesid**](TWCategoryApi.md#categoryprototypeupdateattributespatchcategoriesid) | **PATCH** /Categories/{id} | Patch attributes for a model instance and persist it into the data source.
[**categoryPrototypeUpdateAttributesPutCategoriesid**](TWCategoryApi.md#categoryprototypeupdateattributesputcategoriesid) | **PUT** /Categories/{id} | Patch attributes for a model instance and persist it into the data source.
[**categoryPrototypeUpdateByIdChildren**](TWCategoryApi.md#categoryprototypeupdatebyidchildren) | **PUT** /Categories/{id}/children/{fk} | Update a related item by id for children.
[**categoryReplaceById**](TWCategoryApi.md#categoryreplacebyid) | **POST** /Categories/{id}/replace | Replace attributes for a model instance and persist it into the data source.
[**categoryReplaceOrCreate**](TWCategoryApi.md#categoryreplaceorcreate) | **POST** /Categories/replaceOrCreate | Replace an existing model instance or insert a new one into the data source.
[**categoryUpdateAll**](TWCategoryApi.md#categoryupdateall) | **POST** /Categories/update | Update instances of the model matched by {{where}} from the data source.
[**categoryUpsertPatchCategories**](TWCategoryApi.md#categoryupsertpatchcategories) | **PATCH** /Categories | Patch an existing model instance or insert a new one into the data source.
[**categoryUpsertPutCategories**](TWCategoryApi.md#categoryupsertputcategories) | **PUT** /Categories | Patch an existing model instance or insert a new one into the data source.
[**categoryUpsertWithWhere**](TWCategoryApi.md#categoryupsertwithwhere) | **POST** /Categories/upsertWithWhere | Update an existing model instance or insert a new one into the data source based on the where criteria.


# **categoryCount**
```objc
-(NSNumber*) categoryCountWithWhere: (NSString*) where
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Count instances of the model matched by where from the data source.
[apiInstance categoryCountWithWhere:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryCount: %@", error);
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

# **categoryCreate**
```objc
-(NSNumber*) categoryCreateWithData: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Create a new instance of the model and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCategory* data = [[TWCategory alloc] init]; // Model instance data (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Create a new instance of the model and persist it into the data source.
[apiInstance categoryCreateWithData:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCategory***](TWCategory*.md)| Model instance data | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryCreateChangeStreamGetCategoriesChangeStream**
```objc
-(NSNumber*) categoryCreateChangeStreamGetCategoriesChangeStreamWithOptions: (NSString*) options
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Create a change stream.
[apiInstance categoryCreateChangeStreamGetCategoriesChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryCreateChangeStreamGetCategoriesChangeStream: %@", error);
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

# **categoryCreateChangeStreamPostCategoriesChangeStream**
```objc
-(NSNumber*) categoryCreateChangeStreamPostCategoriesChangeStreamWithOptions: (NSString*) options
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Create a change stream.
[apiInstance categoryCreateChangeStreamPostCategoriesChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryCreateChangeStreamPostCategoriesChangeStream: %@", error);
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

# **categoryDeleteById**
```objc
-(NSNumber*) categoryDeleteByIdWithId: (NSString*) _id
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Delete a model instance by {{id}} from the data source.
[apiInstance categoryDeleteByIdWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryDeleteById: %@", error);
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

# **categoryExistsGetCategoriesidExists**
```objc
-(NSNumber*) categoryExistsGetCategoriesidExistsWithId: (NSString*) _id
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance categoryExistsGetCategoriesidExistsWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryExistsGetCategoriesidExists: %@", error);
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

# **categoryExistsHeadCategoriesid**
```objc
-(NSNumber*) categoryExistsHeadCategoriesidWithId: (NSString*) _id
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance categoryExistsHeadCategoriesidWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryExistsHeadCategoriesid: %@", error);
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

# **categoryFind**
```objc
-(NSNumber*) categoryFindWithFilter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWCategory>* output, NSError* error)) handler;
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Find all instances of the model matched by filter from the data source.
[apiInstance categoryFindWithFilter:filter
          completionHandler: ^(NSArray<TWCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryFind: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**NSArray<TWCategory>***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryFindById**
```objc
-(NSNumber*) categoryFindByIdWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Find a model instance by {{id}} from the data source.
[apiInstance categoryFindByIdWithId:_id
              filter:filter
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryFindById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **filter** | **NSString***| Filter defining fields and include | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryFindOne**
```objc
-(NSNumber*) categoryFindOneWithFilter: (NSString*) filter
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
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

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Find first instance of the model matched by filter from the data source.
[apiInstance categoryFindOneWithFilter:filter
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryFindOne: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeCountChildren**
```objc
-(NSNumber*) categoryPrototypeCountChildrenWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts children of Category.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Counts children of Category.
[apiInstance categoryPrototypeCountChildrenWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeCountChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeCreateChildren**
```objc
-(NSNumber*) categoryPrototypeCreateChildrenWithId: (NSString*) _id
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Creates a new instance in children of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
TWCategory* data = [[TWCategory alloc] init]; //  (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Creates a new instance in children of this model.
[apiInstance categoryPrototypeCreateChildrenWithId:_id
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeCreateChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **data** | [**TWCategory***](TWCategory*.md)|  | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeDeleteChildren**
```objc
-(NSNumber*) categoryPrototypeDeleteChildrenWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes all children of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Deletes all children of this model.
[apiInstance categoryPrototypeDeleteChildrenWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeDeleteChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeDestroyByIdChildren**
```objc
-(NSNumber*) categoryPrototypeDestroyByIdChildrenWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a related item by id for children.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSString* fk = @"fk_example"; // Foreign key for children

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Delete a related item by id for children.
[apiInstance categoryPrototypeDestroyByIdChildrenWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeDestroyByIdChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **fk** | **NSString***| Foreign key for children | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeFindByIdChildren**
```objc
-(NSNumber*) categoryPrototypeFindByIdChildrenWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Find a related item by id for children.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSString* fk = @"fk_example"; // Foreign key for children

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Find a related item by id for children.
[apiInstance categoryPrototypeFindByIdChildrenWithId:_id
              fk:fk
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeFindByIdChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **fk** | **NSString***| Foreign key for children | 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeGetChildren**
```objc
-(NSNumber*) categoryPrototypeGetChildrenWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWCategory>* output, NSError* error)) handler;
```

Queries children of Category.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSString* filter = @"filter_example"; //  (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Queries children of Category.
[apiInstance categoryPrototypeGetChildrenWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeGetChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWCategory>***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeGetParent**
```objc
-(NSNumber*) categoryPrototypeGetParentWithId: (NSString*) _id
    refresh: (NSNumber*) refresh
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Fetches belongsTo relation parent.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSNumber* refresh = @true; //  (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Fetches belongsTo relation parent.
[apiInstance categoryPrototypeGetParentWithId:_id
              refresh:refresh
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeGetParent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **refresh** | **NSNumber***|  | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeUpdateAttributesPatchCategoriesid**
```objc
-(NSNumber*) categoryPrototypeUpdateAttributesPatchCategoriesidWithId: (NSString*) _id
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
TWCategory* data = [[TWCategory alloc] init]; // An object of model property name/value pairs (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance categoryPrototypeUpdateAttributesPatchCategoriesidWithId:_id
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeUpdateAttributesPatchCategoriesid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **data** | [**TWCategory***](TWCategory*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeUpdateAttributesPutCategoriesid**
```objc
-(NSNumber*) categoryPrototypeUpdateAttributesPutCategoriesidWithId: (NSString*) _id
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
TWCategory* data = [[TWCategory alloc] init]; // An object of model property name/value pairs (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance categoryPrototypeUpdateAttributesPutCategoriesidWithId:_id
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeUpdateAttributesPutCategoriesid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **data** | [**TWCategory***](TWCategory*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryPrototypeUpdateByIdChildren**
```objc
-(NSNumber*) categoryPrototypeUpdateByIdChildrenWithId: (NSString*) _id
    fk: (NSString*) fk
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Update a related item by id for children.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Category id
NSString* fk = @"fk_example"; // Foreign key for children
TWCategory* data = [[TWCategory alloc] init]; //  (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Update a related item by id for children.
[apiInstance categoryPrototypeUpdateByIdChildrenWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryPrototypeUpdateByIdChildren: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Category id | 
 **fk** | **NSString***| Foreign key for children | 
 **data** | [**TWCategory***](TWCategory*.md)|  | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryReplaceById**
```objc
-(NSNumber*) categoryReplaceByIdWithId: (NSString*) _id
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
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
TWCategory* data = [[TWCategory alloc] init]; // Model instance data (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Replace attributes for a model instance and persist it into the data source.
[apiInstance categoryReplaceByIdWithId:_id
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryReplaceById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **data** | [**TWCategory***](TWCategory*.md)| Model instance data | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryReplaceOrCreate**
```objc
-(NSNumber*) categoryReplaceOrCreateWithData: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Replace an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCategory* data = [[TWCategory alloc] init]; // Model instance data (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Replace an existing model instance or insert a new one into the data source.
[apiInstance categoryReplaceOrCreateWithData:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryReplaceOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCategory***](TWCategory*.md)| Model instance data | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryUpdateAll**
```objc
-(NSNumber*) categoryUpdateAllWithWhere: (NSString*) where
    data: (TWCategory*) data
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
TWCategory* data = [[TWCategory alloc] init]; // An object of model property name/value pairs (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Update instances of the model matched by {{where}} from the data source.
[apiInstance categoryUpdateAllWithWhere:where
              data:data
          completionHandler: ^(TWInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryUpdateAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWCategory***](TWCategory*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWInlineResponse2001***](TWInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryUpsertPatchCategories**
```objc
-(NSNumber*) categoryUpsertPatchCategoriesWithData: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCategory* data = [[TWCategory alloc] init]; // Model instance data (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance categoryUpsertPatchCategoriesWithData:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryUpsertPatchCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCategory***](TWCategory*.md)| Model instance data | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryUpsertPutCategories**
```objc
-(NSNumber*) categoryUpsertPutCategoriesWithData: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCategory* data = [[TWCategory alloc] init]; // Model instance data (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance categoryUpsertPutCategoriesWithData:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryUpsertPutCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCategory***](TWCategory*.md)| Model instance data | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryUpsertWithWhere**
```objc
-(NSNumber*) categoryUpsertWithWhereWithWhere: (NSString*) where
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
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
TWCategory* data = [[TWCategory alloc] init]; // An object of model property name/value pairs (optional)

TWCategoryApi*apiInstance = [[TWCategoryApi alloc] init];

// Update an existing model instance or insert a new one into the data source based on the where criteria.
[apiInstance categoryUpsertWithWhereWithWhere:where
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCategoryApi->categoryUpsertWithWhere: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWCategory***](TWCategory*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

