# TWDesignApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**designCount**](TWDesignApi.md#designcount) | **GET** /Designs/count | Count instances of the model matched by where from the data source.
[**designCreate**](TWDesignApi.md#designcreate) | **POST** /Designs | Create a new instance of the model and persist it into the data source.
[**designCreateChangeStreamGetDesignsChangeStream**](TWDesignApi.md#designcreatechangestreamgetdesignschangestream) | **GET** /Designs/change-stream | Create a change stream.
[**designCreateChangeStreamPostDesignsChangeStream**](TWDesignApi.md#designcreatechangestreampostdesignschangestream) | **POST** /Designs/change-stream | Create a change stream.
[**designDeleteById**](TWDesignApi.md#designdeletebyid) | **DELETE** /Designs/{id} | Delete a model instance by {{id}} from the data source.
[**designExistsGetDesignsidExists**](TWDesignApi.md#designexistsgetdesignsidexists) | **GET** /Designs/{id}/exists | Check whether a model instance exists in the data source.
[**designExistsHeadDesignsid**](TWDesignApi.md#designexistsheaddesignsid) | **HEAD** /Designs/{id} | Check whether a model instance exists in the data source.
[**designFind**](TWDesignApi.md#designfind) | **GET** /Designs | Find all instances of the model matched by filter from the data source.
[**designFindById**](TWDesignApi.md#designfindbyid) | **GET** /Designs/{id} | Find a model instance by {{id}} from the data source.
[**designFindOne**](TWDesignApi.md#designfindone) | **GET** /Designs/findOne | Find first instance of the model matched by filter from the data source.
[**designPrototypeCountCategories**](TWDesignApi.md#designprototypecountcategories) | **GET** /Designs/{id}/categories/count | Counts categories of Design.
[**designPrototypeCountTags**](TWDesignApi.md#designprototypecounttags) | **GET** /Designs/{id}/tags/count | Counts tags of Design.
[**designPrototypeCreateCategories**](TWDesignApi.md#designprototypecreatecategories) | **POST** /Designs/{id}/categories | Creates a new instance in categories of this model.
[**designPrototypeCreateTags**](TWDesignApi.md#designprototypecreatetags) | **POST** /Designs/{id}/tags | Creates a new instance in tags of this model.
[**designPrototypeDeleteCategories**](TWDesignApi.md#designprototypedeletecategories) | **DELETE** /Designs/{id}/categories | Deletes all categories of this model.
[**designPrototypeDeleteTags**](TWDesignApi.md#designprototypedeletetags) | **DELETE** /Designs/{id}/tags | Deletes all tags of this model.
[**designPrototypeDestroyByIdCategories**](TWDesignApi.md#designprototypedestroybyidcategories) | **DELETE** /Designs/{id}/categories/{fk} | Delete a related item by id for categories.
[**designPrototypeDestroyByIdTags**](TWDesignApi.md#designprototypedestroybyidtags) | **DELETE** /Designs/{id}/tags/{fk} | Delete a related item by id for tags.
[**designPrototypeFindByIdCategories**](TWDesignApi.md#designprototypefindbyidcategories) | **GET** /Designs/{id}/categories/{fk} | Find a related item by id for categories.
[**designPrototypeFindByIdTags**](TWDesignApi.md#designprototypefindbyidtags) | **GET** /Designs/{id}/tags/{fk} | Find a related item by id for tags.
[**designPrototypeGetCategories**](TWDesignApi.md#designprototypegetcategories) | **GET** /Designs/{id}/categories | Queries categories of Design.
[**designPrototypeGetCustomer**](TWDesignApi.md#designprototypegetcustomer) | **GET** /Designs/{id}/customer | Fetches belongsTo relation customer.
[**designPrototypeGetTags**](TWDesignApi.md#designprototypegettags) | **GET** /Designs/{id}/tags | Queries tags of Design.
[**designPrototypeUpdateAttributesPatchDesignsid**](TWDesignApi.md#designprototypeupdateattributespatchdesignsid) | **PATCH** /Designs/{id} | Patch attributes for a model instance and persist it into the data source.
[**designPrototypeUpdateAttributesPutDesignsid**](TWDesignApi.md#designprototypeupdateattributesputdesignsid) | **PUT** /Designs/{id} | Patch attributes for a model instance and persist it into the data source.
[**designPrototypeUpdateByIdCategories**](TWDesignApi.md#designprototypeupdatebyidcategories) | **PUT** /Designs/{id}/categories/{fk} | Update a related item by id for categories.
[**designPrototypeUpdateByIdTags**](TWDesignApi.md#designprototypeupdatebyidtags) | **PUT** /Designs/{id}/tags/{fk} | Update a related item by id for tags.
[**designReplaceById**](TWDesignApi.md#designreplacebyid) | **POST** /Designs/{id}/replace | Replace attributes for a model instance and persist it into the data source.
[**designReplaceOrCreate**](TWDesignApi.md#designreplaceorcreate) | **POST** /Designs/replaceOrCreate | Replace an existing model instance or insert a new one into the data source.
[**designUpdateAll**](TWDesignApi.md#designupdateall) | **POST** /Designs/update | Update instances of the model matched by {{where}} from the data source.
[**designUpsertPatchDesigns**](TWDesignApi.md#designupsertpatchdesigns) | **PATCH** /Designs | Patch an existing model instance or insert a new one into the data source.
[**designUpsertPutDesigns**](TWDesignApi.md#designupsertputdesigns) | **PUT** /Designs | Patch an existing model instance or insert a new one into the data source.
[**designUpsertWithWhere**](TWDesignApi.md#designupsertwithwhere) | **POST** /Designs/upsertWithWhere | Update an existing model instance or insert a new one into the data source based on the where criteria.


# **designCount**
```objc
-(NSNumber*) designCountWithWhere: (NSString*) where
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Count instances of the model matched by where from the data source.
[apiInstance designCountWithWhere:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designCount: %@", error);
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

# **designCreate**
```objc
-(NSNumber*) designCreateWithData: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Create a new instance of the model and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWDesign* data = [[TWDesign alloc] init]; // Model instance data (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Create a new instance of the model and persist it into the data source.
[apiInstance designCreateWithData:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWDesign***](TWDesign*.md)| Model instance data | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designCreateChangeStreamGetDesignsChangeStream**
```objc
-(NSNumber*) designCreateChangeStreamGetDesignsChangeStreamWithOptions: (NSString*) options
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Create a change stream.
[apiInstance designCreateChangeStreamGetDesignsChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designCreateChangeStreamGetDesignsChangeStream: %@", error);
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

# **designCreateChangeStreamPostDesignsChangeStream**
```objc
-(NSNumber*) designCreateChangeStreamPostDesignsChangeStreamWithOptions: (NSString*) options
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Create a change stream.
[apiInstance designCreateChangeStreamPostDesignsChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designCreateChangeStreamPostDesignsChangeStream: %@", error);
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

# **designDeleteById**
```objc
-(NSNumber*) designDeleteByIdWithId: (NSString*) _id
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Delete a model instance by {{id}} from the data source.
[apiInstance designDeleteByIdWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designDeleteById: %@", error);
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

# **designExistsGetDesignsidExists**
```objc
-(NSNumber*) designExistsGetDesignsidExistsWithId: (NSString*) _id
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance designExistsGetDesignsidExistsWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designExistsGetDesignsidExists: %@", error);
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

# **designExistsHeadDesignsid**
```objc
-(NSNumber*) designExistsHeadDesignsidWithId: (NSString*) _id
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance designExistsHeadDesignsidWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designExistsHeadDesignsid: %@", error);
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

# **designFind**
```objc
-(NSNumber*) designFindWithFilter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWDesign>* output, NSError* error)) handler;
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Find all instances of the model matched by filter from the data source.
[apiInstance designFindWithFilter:filter
          completionHandler: ^(NSArray<TWDesign>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designFind: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**NSArray<TWDesign>***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designFindById**
```objc
-(NSNumber*) designFindByIdWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Find a model instance by {{id}} from the data source.
[apiInstance designFindByIdWithId:_id
              filter:filter
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designFindById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **filter** | **NSString***| Filter defining fields and include | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designFindOne**
```objc
-(NSNumber*) designFindOneWithFilter: (NSString*) filter
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
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

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Find first instance of the model matched by filter from the data source.
[apiInstance designFindOneWithFilter:filter
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designFindOne: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeCountCategories**
```objc
-(NSNumber*) designPrototypeCountCategoriesWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts categories of Design.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Counts categories of Design.
[apiInstance designPrototypeCountCategoriesWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeCountCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeCountTags**
```objc
-(NSNumber*) designPrototypeCountTagsWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts tags of Design.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Counts tags of Design.
[apiInstance designPrototypeCountTagsWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeCountTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeCreateCategories**
```objc
-(NSNumber*) designPrototypeCreateCategoriesWithId: (NSString*) _id
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Creates a new instance in categories of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
TWCategory* data = [[TWCategory alloc] init]; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Creates a new instance in categories of this model.
[apiInstance designPrototypeCreateCategoriesWithId:_id
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeCreateCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **data** | [**TWCategory***](TWCategory*.md)|  | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeCreateTags**
```objc
-(NSNumber*) designPrototypeCreateTagsWithId: (NSString*) _id
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Creates a new instance in tags of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
TWTag* data = [[TWTag alloc] init]; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Creates a new instance in tags of this model.
[apiInstance designPrototypeCreateTagsWithId:_id
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeCreateTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **data** | [**TWTag***](TWTag*.md)|  | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeDeleteCategories**
```objc
-(NSNumber*) designPrototypeDeleteCategoriesWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes all categories of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Deletes all categories of this model.
[apiInstance designPrototypeDeleteCategoriesWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeDeleteCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeDeleteTags**
```objc
-(NSNumber*) designPrototypeDeleteTagsWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes all tags of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Deletes all tags of this model.
[apiInstance designPrototypeDeleteTagsWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeDeleteTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeDestroyByIdCategories**
```objc
-(NSNumber*) designPrototypeDestroyByIdCategoriesWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a related item by id for categories.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for categories

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Delete a related item by id for categories.
[apiInstance designPrototypeDestroyByIdCategoriesWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeDestroyByIdCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for categories | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeDestroyByIdTags**
```objc
-(NSNumber*) designPrototypeDestroyByIdTagsWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a related item by id for tags.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for tags

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Delete a related item by id for tags.
[apiInstance designPrototypeDestroyByIdTagsWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeDestroyByIdTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for tags | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeFindByIdCategories**
```objc
-(NSNumber*) designPrototypeFindByIdCategoriesWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Find a related item by id for categories.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for categories

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Find a related item by id for categories.
[apiInstance designPrototypeFindByIdCategoriesWithId:_id
              fk:fk
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeFindByIdCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for categories | 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeFindByIdTags**
```objc
-(NSNumber*) designPrototypeFindByIdTagsWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Find a related item by id for tags.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for tags

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Find a related item by id for tags.
[apiInstance designPrototypeFindByIdTagsWithId:_id
              fk:fk
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeFindByIdTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for tags | 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeGetCategories**
```objc
-(NSNumber*) designPrototypeGetCategoriesWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWCategory>* output, NSError* error)) handler;
```

Queries categories of Design.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* filter = @"filter_example"; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Queries categories of Design.
[apiInstance designPrototypeGetCategoriesWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeGetCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWCategory>***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeGetCustomer**
```objc
-(NSNumber*) designPrototypeGetCustomerWithId: (NSString*) _id
    refresh: (NSNumber*) refresh
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Fetches belongsTo relation customer.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSNumber* refresh = @true; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Fetches belongsTo relation customer.
[apiInstance designPrototypeGetCustomerWithId:_id
              refresh:refresh
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeGetCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **refresh** | **NSNumber***|  | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeGetTags**
```objc
-(NSNumber*) designPrototypeGetTagsWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWTag>* output, NSError* error)) handler;
```

Queries tags of Design.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* filter = @"filter_example"; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Queries tags of Design.
[apiInstance designPrototypeGetTagsWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWTag>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeGetTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWTag>***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeUpdateAttributesPatchDesignsid**
```objc
-(NSNumber*) designPrototypeUpdateAttributesPatchDesignsidWithId: (NSString*) _id
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
TWDesign* data = [[TWDesign alloc] init]; // An object of model property name/value pairs (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance designPrototypeUpdateAttributesPatchDesignsidWithId:_id
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeUpdateAttributesPatchDesignsid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **data** | [**TWDesign***](TWDesign*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeUpdateAttributesPutDesignsid**
```objc
-(NSNumber*) designPrototypeUpdateAttributesPutDesignsidWithId: (NSString*) _id
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
TWDesign* data = [[TWDesign alloc] init]; // An object of model property name/value pairs (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance designPrototypeUpdateAttributesPutDesignsidWithId:_id
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeUpdateAttributesPutDesignsid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **data** | [**TWDesign***](TWDesign*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeUpdateByIdCategories**
```objc
-(NSNumber*) designPrototypeUpdateByIdCategoriesWithId: (NSString*) _id
    fk: (NSString*) fk
    data: (TWCategory*) data
        completionHandler: (void (^)(TWCategory* output, NSError* error)) handler;
```

Update a related item by id for categories.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for categories
TWCategory* data = [[TWCategory alloc] init]; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Update a related item by id for categories.
[apiInstance designPrototypeUpdateByIdCategoriesWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeUpdateByIdCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for categories | 
 **data** | [**TWCategory***](TWCategory*.md)|  | [optional] 

### Return type

[**TWCategory***](TWCategory.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designPrototypeUpdateByIdTags**
```objc
-(NSNumber*) designPrototypeUpdateByIdTagsWithId: (NSString*) _id
    fk: (NSString*) fk
    data: (TWTag*) data
        completionHandler: (void (^)(TWTag* output, NSError* error)) handler;
```

Update a related item by id for tags.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Design id
NSString* fk = @"fk_example"; // Foreign key for tags
TWTag* data = [[TWTag alloc] init]; //  (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Update a related item by id for tags.
[apiInstance designPrototypeUpdateByIdTagsWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWTag* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designPrototypeUpdateByIdTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Design id | 
 **fk** | **NSString***| Foreign key for tags | 
 **data** | [**TWTag***](TWTag*.md)|  | [optional] 

### Return type

[**TWTag***](TWTag.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designReplaceById**
```objc
-(NSNumber*) designReplaceByIdWithId: (NSString*) _id
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
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
TWDesign* data = [[TWDesign alloc] init]; // Model instance data (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Replace attributes for a model instance and persist it into the data source.
[apiInstance designReplaceByIdWithId:_id
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designReplaceById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **data** | [**TWDesign***](TWDesign*.md)| Model instance data | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designReplaceOrCreate**
```objc
-(NSNumber*) designReplaceOrCreateWithData: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Replace an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWDesign* data = [[TWDesign alloc] init]; // Model instance data (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Replace an existing model instance or insert a new one into the data source.
[apiInstance designReplaceOrCreateWithData:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designReplaceOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWDesign***](TWDesign*.md)| Model instance data | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designUpdateAll**
```objc
-(NSNumber*) designUpdateAllWithWhere: (NSString*) where
    data: (TWDesign*) data
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
TWDesign* data = [[TWDesign alloc] init]; // An object of model property name/value pairs (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Update instances of the model matched by {{where}} from the data source.
[apiInstance designUpdateAllWithWhere:where
              data:data
          completionHandler: ^(TWInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designUpdateAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWDesign***](TWDesign*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWInlineResponse2001***](TWInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designUpsertPatchDesigns**
```objc
-(NSNumber*) designUpsertPatchDesignsWithData: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWDesign* data = [[TWDesign alloc] init]; // Model instance data (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance designUpsertPatchDesignsWithData:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designUpsertPatchDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWDesign***](TWDesign*.md)| Model instance data | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designUpsertPutDesigns**
```objc
-(NSNumber*) designUpsertPutDesignsWithData: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWDesign* data = [[TWDesign alloc] init]; // Model instance data (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance designUpsertPutDesignsWithData:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designUpsertPutDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWDesign***](TWDesign*.md)| Model instance data | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **designUpsertWithWhere**
```objc
-(NSNumber*) designUpsertWithWhereWithWhere: (NSString*) where
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
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
TWDesign* data = [[TWDesign alloc] init]; // An object of model property name/value pairs (optional)

TWDesignApi*apiInstance = [[TWDesignApi alloc] init];

// Update an existing model instance or insert a new one into the data source based on the where criteria.
[apiInstance designUpsertWithWhereWithWhere:where
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWDesignApi->designUpsertWithWhere: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWDesign***](TWDesign*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

