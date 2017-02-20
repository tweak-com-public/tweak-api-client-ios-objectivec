# TWCustomerApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerConfirm**](TWCustomerApi.md#customerconfirm) | **GET** /Customers/confirm | Confirm a user registration with email verification token.
[**customerCount**](TWCustomerApi.md#customercount) | **GET** /Customers/count | Count instances of the model matched by where from the data source.
[**customerCreate**](TWCustomerApi.md#customercreate) | **POST** /Customers | Create a new instance of the model and persist it into the data source.
[**customerCreateChangeStreamGetCustomersChangeStream**](TWCustomerApi.md#customercreatechangestreamgetcustomerschangestream) | **GET** /Customers/change-stream | Create a change stream.
[**customerCreateChangeStreamPostCustomersChangeStream**](TWCustomerApi.md#customercreatechangestreampostcustomerschangestream) | **POST** /Customers/change-stream | Create a change stream.
[**customerDeleteById**](TWCustomerApi.md#customerdeletebyid) | **DELETE** /Customers/{id} | Delete a model instance by {{id}} from the data source.
[**customerExistsGetCustomersidExists**](TWCustomerApi.md#customerexistsgetcustomersidexists) | **GET** /Customers/{id}/exists | Check whether a model instance exists in the data source.
[**customerExistsHeadCustomersid**](TWCustomerApi.md#customerexistsheadcustomersid) | **HEAD** /Customers/{id} | Check whether a model instance exists in the data source.
[**customerFind**](TWCustomerApi.md#customerfind) | **GET** /Customers | Find all instances of the model matched by filter from the data source.
[**customerFindById**](TWCustomerApi.md#customerfindbyid) | **GET** /Customers/{id} | Find a model instance by {{id}} from the data source.
[**customerFindOne**](TWCustomerApi.md#customerfindone) | **GET** /Customers/findOne | Find first instance of the model matched by filter from the data source.
[**customerLogin**](TWCustomerApi.md#customerlogin) | **POST** /Customers/login | Login a user with username/email and password.
[**customerLogout**](TWCustomerApi.md#customerlogout) | **POST** /Customers/logout | Logout a user with access token.
[**customerPrototypeCountAccessTokens**](TWCustomerApi.md#customerprototypecountaccesstokens) | **GET** /Customers/{id}/accessTokens/count | Counts accessTokens of Customer.
[**customerPrototypeCountDesigns**](TWCustomerApi.md#customerprototypecountdesigns) | **GET** /Customers/{id}/designs/count | Counts designs of Customer.
[**customerPrototypeCreateAccessTokens**](TWCustomerApi.md#customerprototypecreateaccesstokens) | **POST** /Customers/{id}/accessTokens | Creates a new instance in accessTokens of this model.
[**customerPrototypeCreateDesigns**](TWCustomerApi.md#customerprototypecreatedesigns) | **POST** /Customers/{id}/designs | Creates a new instance in designs of this model.
[**customerPrototypeDeleteAccessTokens**](TWCustomerApi.md#customerprototypedeleteaccesstokens) | **DELETE** /Customers/{id}/accessTokens | Deletes all accessTokens of this model.
[**customerPrototypeDeleteDesigns**](TWCustomerApi.md#customerprototypedeletedesigns) | **DELETE** /Customers/{id}/designs | Deletes all designs of this model.
[**customerPrototypeDestroyByIdAccessTokens**](TWCustomerApi.md#customerprototypedestroybyidaccesstokens) | **DELETE** /Customers/{id}/accessTokens/{fk} | Delete a related item by id for accessTokens.
[**customerPrototypeDestroyByIdDesigns**](TWCustomerApi.md#customerprototypedestroybyiddesigns) | **DELETE** /Customers/{id}/designs/{fk} | Delete a related item by id for designs.
[**customerPrototypeFindByIdAccessTokens**](TWCustomerApi.md#customerprototypefindbyidaccesstokens) | **GET** /Customers/{id}/accessTokens/{fk} | Find a related item by id for accessTokens.
[**customerPrototypeFindByIdDesigns**](TWCustomerApi.md#customerprototypefindbyiddesigns) | **GET** /Customers/{id}/designs/{fk} | Find a related item by id for designs.
[**customerPrototypeGetAccessTokens**](TWCustomerApi.md#customerprototypegetaccesstokens) | **GET** /Customers/{id}/accessTokens | Queries accessTokens of Customer.
[**customerPrototypeGetDesigns**](TWCustomerApi.md#customerprototypegetdesigns) | **GET** /Customers/{id}/designs | Queries designs of Customer.
[**customerPrototypeUpdateAttributesPatchCustomersid**](TWCustomerApi.md#customerprototypeupdateattributespatchcustomersid) | **PATCH** /Customers/{id} | Patch attributes for a model instance and persist it into the data source.
[**customerPrototypeUpdateAttributesPutCustomersid**](TWCustomerApi.md#customerprototypeupdateattributesputcustomersid) | **PUT** /Customers/{id} | Patch attributes for a model instance and persist it into the data source.
[**customerPrototypeUpdateByIdAccessTokens**](TWCustomerApi.md#customerprototypeupdatebyidaccesstokens) | **PUT** /Customers/{id}/accessTokens/{fk} | Update a related item by id for accessTokens.
[**customerPrototypeUpdateByIdDesigns**](TWCustomerApi.md#customerprototypeupdatebyiddesigns) | **PUT** /Customers/{id}/designs/{fk} | Update a related item by id for designs.
[**customerReplaceById**](TWCustomerApi.md#customerreplacebyid) | **POST** /Customers/{id}/replace | Replace attributes for a model instance and persist it into the data source.
[**customerReplaceOrCreate**](TWCustomerApi.md#customerreplaceorcreate) | **POST** /Customers/replaceOrCreate | Replace an existing model instance or insert a new one into the data source.
[**customerResetPassword**](TWCustomerApi.md#customerresetpassword) | **POST** /Customers/reset | Reset password for a user with email.
[**customerUpdateAll**](TWCustomerApi.md#customerupdateall) | **POST** /Customers/update | Update instances of the model matched by {{where}} from the data source.
[**customerUpsertPatchCustomers**](TWCustomerApi.md#customerupsertpatchcustomers) | **PATCH** /Customers | Patch an existing model instance or insert a new one into the data source.
[**customerUpsertPutCustomers**](TWCustomerApi.md#customerupsertputcustomers) | **PUT** /Customers | Patch an existing model instance or insert a new one into the data source.
[**customerUpsertWithWhere**](TWCustomerApi.md#customerupsertwithwhere) | **POST** /Customers/upsertWithWhere | Update an existing model instance or insert a new one into the data source based on the where criteria.


# **customerConfirm**
```objc
-(NSNumber*) customerConfirmWithUid: (NSString*) uid
    token: (NSString*) token
    redirect: (NSString*) redirect
        completionHandler: (void (^)(NSError* error)) handler;
```

Confirm a user registration with email verification token.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* uid = @"uid_example"; // 
NSString* token = @"token_example"; // 
NSString* redirect = @"redirect_example"; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Confirm a user registration with email verification token.
[apiInstance customerConfirmWithUid:uid
              token:token
              redirect:redirect
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerConfirm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***|  | 
 **token** | **NSString***|  | 
 **redirect** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerCount**
```objc
-(NSNumber*) customerCountWithWhere: (NSString*) where
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Count instances of the model matched by where from the data source.
[apiInstance customerCountWithWhere:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerCount: %@", error);
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

# **customerCreate**
```objc
-(NSNumber*) customerCreateWithData: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Create a new instance of the model and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCustomer* data = [[TWCustomer alloc] init]; // Model instance data (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Create a new instance of the model and persist it into the data source.
[apiInstance customerCreateWithData:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCustomer***](TWCustomer*.md)| Model instance data | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerCreateChangeStreamGetCustomersChangeStream**
```objc
-(NSNumber*) customerCreateChangeStreamGetCustomersChangeStreamWithOptions: (NSString*) options
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Create a change stream.
[apiInstance customerCreateChangeStreamGetCustomersChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerCreateChangeStreamGetCustomersChangeStream: %@", error);
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

# **customerCreateChangeStreamPostCustomersChangeStream**
```objc
-(NSNumber*) customerCreateChangeStreamPostCustomersChangeStreamWithOptions: (NSString*) options
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Create a change stream.
[apiInstance customerCreateChangeStreamPostCustomersChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerCreateChangeStreamPostCustomersChangeStream: %@", error);
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

# **customerDeleteById**
```objc
-(NSNumber*) customerDeleteByIdWithId: (NSString*) _id
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Delete a model instance by {{id}} from the data source.
[apiInstance customerDeleteByIdWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerDeleteById: %@", error);
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

# **customerExistsGetCustomersidExists**
```objc
-(NSNumber*) customerExistsGetCustomersidExistsWithId: (NSString*) _id
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance customerExistsGetCustomersidExistsWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerExistsGetCustomersidExists: %@", error);
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

# **customerExistsHeadCustomersid**
```objc
-(NSNumber*) customerExistsHeadCustomersidWithId: (NSString*) _id
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance customerExistsHeadCustomersidWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerExistsHeadCustomersid: %@", error);
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

# **customerFind**
```objc
-(NSNumber*) customerFindWithFilter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWCustomer>* output, NSError* error)) handler;
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Find all instances of the model matched by filter from the data source.
[apiInstance customerFindWithFilter:filter
          completionHandler: ^(NSArray<TWCustomer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerFind: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**NSArray<TWCustomer>***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerFindById**
```objc
-(NSNumber*) customerFindByIdWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Find a model instance by {{id}} from the data source.
[apiInstance customerFindByIdWithId:_id
              filter:filter
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerFindById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **filter** | **NSString***| Filter defining fields and include | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerFindOne**
```objc
-(NSNumber*) customerFindOneWithFilter: (NSString*) filter
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
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

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Find first instance of the model matched by filter from the data source.
[apiInstance customerFindOneWithFilter:filter
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerFindOne: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLogin**
```objc
-(NSNumber*) customerLoginWithCredentials: (NSObject*) credentials
    include: (NSString*) include
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Login a user with username/email and password.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSObject* credentials = NULL; // 
NSString* include = @"include_example"; // Related objects to include in the response. See the description of return value for more details. (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Login a user with username/email and password.
[apiInstance customerLoginWithCredentials:credentials
              include:include
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerLogin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | **NSObject***|  | 
 **include** | **NSString***| Related objects to include in the response. See the description of return value for more details. | [optional] 

### Return type

**NSObject***

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLogout**
```objc
-(NSNumber*) customerLogoutWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Logout a user with access token.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];



TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Logout a user with access token.
[apiInstance customerLogoutWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerLogout: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeCountAccessTokens**
```objc
-(NSNumber*) customerPrototypeCountAccessTokensWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts accessTokens of Customer.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Counts accessTokens of Customer.
[apiInstance customerPrototypeCountAccessTokensWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeCountAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeCountDesigns**
```objc
-(NSNumber*) customerPrototypeCountDesignsWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts designs of Customer.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Counts designs of Customer.
[apiInstance customerPrototypeCountDesignsWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeCountDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeCreateAccessTokens**
```objc
-(NSNumber*) customerPrototypeCreateAccessTokensWithId: (NSString*) _id
    data: (TWAccessToken*) data
        completionHandler: (void (^)(TWAccessToken* output, NSError* error)) handler;
```

Creates a new instance in accessTokens of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
TWAccessToken* data = [[TWAccessToken alloc] init]; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Creates a new instance in accessTokens of this model.
[apiInstance customerPrototypeCreateAccessTokensWithId:_id
              data:data
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeCreateAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **data** | [**TWAccessToken***](TWAccessToken*.md)|  | [optional] 

### Return type

[**TWAccessToken***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeCreateDesigns**
```objc
-(NSNumber*) customerPrototypeCreateDesignsWithId: (NSString*) _id
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Creates a new instance in designs of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
TWDesign* data = [[TWDesign alloc] init]; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Creates a new instance in designs of this model.
[apiInstance customerPrototypeCreateDesignsWithId:_id
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeCreateDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **data** | [**TWDesign***](TWDesign*.md)|  | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeDeleteAccessTokens**
```objc
-(NSNumber*) customerPrototypeDeleteAccessTokensWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes all accessTokens of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Deletes all accessTokens of this model.
[apiInstance customerPrototypeDeleteAccessTokensWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeDeleteAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeDeleteDesigns**
```objc
-(NSNumber*) customerPrototypeDeleteDesignsWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes all designs of this model.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Deletes all designs of this model.
[apiInstance customerPrototypeDeleteDesignsWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeDeleteDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeDestroyByIdAccessTokens**
```objc
-(NSNumber*) customerPrototypeDestroyByIdAccessTokensWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a related item by id for accessTokens.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for accessTokens

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Delete a related item by id for accessTokens.
[apiInstance customerPrototypeDestroyByIdAccessTokensWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeDestroyByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for accessTokens | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeDestroyByIdDesigns**
```objc
-(NSNumber*) customerPrototypeDestroyByIdDesignsWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a related item by id for designs.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for designs

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Delete a related item by id for designs.
[apiInstance customerPrototypeDestroyByIdDesignsWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeDestroyByIdDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for designs | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeFindByIdAccessTokens**
```objc
-(NSNumber*) customerPrototypeFindByIdAccessTokensWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(TWAccessToken* output, NSError* error)) handler;
```

Find a related item by id for accessTokens.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for accessTokens

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Find a related item by id for accessTokens.
[apiInstance customerPrototypeFindByIdAccessTokensWithId:_id
              fk:fk
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeFindByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for accessTokens | 

### Return type

[**TWAccessToken***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeFindByIdDesigns**
```objc
-(NSNumber*) customerPrototypeFindByIdDesignsWithId: (NSString*) _id
    fk: (NSString*) fk
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Find a related item by id for designs.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for designs

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Find a related item by id for designs.
[apiInstance customerPrototypeFindByIdDesignsWithId:_id
              fk:fk
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeFindByIdDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for designs | 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeGetAccessTokens**
```objc
-(NSNumber*) customerPrototypeGetAccessTokensWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWAccessToken>* output, NSError* error)) handler;
```

Queries accessTokens of Customer.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* filter = @"filter_example"; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Queries accessTokens of Customer.
[apiInstance customerPrototypeGetAccessTokensWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWAccessToken>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeGetAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWAccessToken>***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeGetDesigns**
```objc
-(NSNumber*) customerPrototypeGetDesignsWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWDesign>* output, NSError* error)) handler;
```

Queries designs of Customer.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* filter = @"filter_example"; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Queries designs of Customer.
[apiInstance customerPrototypeGetDesignsWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWDesign>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeGetDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWDesign>***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeUpdateAttributesPatchCustomersid**
```objc
-(NSNumber*) customerPrototypeUpdateAttributesPatchCustomersidWithId: (NSString*) _id
    data: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
TWCustomer* data = [[TWCustomer alloc] init]; // An object of model property name/value pairs (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance customerPrototypeUpdateAttributesPatchCustomersidWithId:_id
              data:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeUpdateAttributesPatchCustomersid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **data** | [**TWCustomer***](TWCustomer*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeUpdateAttributesPutCustomersid**
```objc
-(NSNumber*) customerPrototypeUpdateAttributesPutCustomersidWithId: (NSString*) _id
    data: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
TWCustomer* data = [[TWCustomer alloc] init]; // An object of model property name/value pairs (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance customerPrototypeUpdateAttributesPutCustomersidWithId:_id
              data:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeUpdateAttributesPutCustomersid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **data** | [**TWCustomer***](TWCustomer*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeUpdateByIdAccessTokens**
```objc
-(NSNumber*) customerPrototypeUpdateByIdAccessTokensWithId: (NSString*) _id
    fk: (NSString*) fk
    data: (TWAccessToken*) data
        completionHandler: (void (^)(TWAccessToken* output, NSError* error)) handler;
```

Update a related item by id for accessTokens.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for accessTokens
TWAccessToken* data = [[TWAccessToken alloc] init]; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Update a related item by id for accessTokens.
[apiInstance customerPrototypeUpdateByIdAccessTokensWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeUpdateByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for accessTokens | 
 **data** | [**TWAccessToken***](TWAccessToken*.md)|  | [optional] 

### Return type

[**TWAccessToken***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPrototypeUpdateByIdDesigns**
```objc
-(NSNumber*) customerPrototypeUpdateByIdDesignsWithId: (NSString*) _id
    fk: (NSString*) fk
    data: (TWDesign*) data
        completionHandler: (void (^)(TWDesign* output, NSError* error)) handler;
```

Update a related item by id for designs.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // Customer id
NSString* fk = @"fk_example"; // Foreign key for designs
TWDesign* data = [[TWDesign alloc] init]; //  (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Update a related item by id for designs.
[apiInstance customerPrototypeUpdateByIdDesignsWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWDesign* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerPrototypeUpdateByIdDesigns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Customer id | 
 **fk** | **NSString***| Foreign key for designs | 
 **data** | [**TWDesign***](TWDesign*.md)|  | [optional] 

### Return type

[**TWDesign***](TWDesign.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerReplaceById**
```objc
-(NSNumber*) customerReplaceByIdWithId: (NSString*) _id
    data: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
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
TWCustomer* data = [[TWCustomer alloc] init]; // Model instance data (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Replace attributes for a model instance and persist it into the data source.
[apiInstance customerReplaceByIdWithId:_id
              data:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerReplaceById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **data** | [**TWCustomer***](TWCustomer*.md)| Model instance data | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerReplaceOrCreate**
```objc
-(NSNumber*) customerReplaceOrCreateWithData: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Replace an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCustomer* data = [[TWCustomer alloc] init]; // Model instance data (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Replace an existing model instance or insert a new one into the data source.
[apiInstance customerReplaceOrCreateWithData:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerReplaceOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCustomer***](TWCustomer*.md)| Model instance data | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerResetPassword**
```objc
-(NSNumber*) customerResetPasswordWithOptions: (NSObject*) options
        completionHandler: (void (^)(NSError* error)) handler;
```

Reset password for a user with email.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSObject* options = NULL; // 

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Reset password for a user with email.
[apiInstance customerResetPasswordWithOptions:options
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerResetPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **options** | **NSObject***|  | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpdateAll**
```objc
-(NSNumber*) customerUpdateAllWithWhere: (NSString*) where
    data: (TWCustomer*) data
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
TWCustomer* data = [[TWCustomer alloc] init]; // An object of model property name/value pairs (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Update instances of the model matched by {{where}} from the data source.
[apiInstance customerUpdateAllWithWhere:where
              data:data
          completionHandler: ^(TWInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerUpdateAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWCustomer***](TWCustomer*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWInlineResponse2001***](TWInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpsertPatchCustomers**
```objc
-(NSNumber*) customerUpsertPatchCustomersWithData: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCustomer* data = [[TWCustomer alloc] init]; // Model instance data (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance customerUpsertPatchCustomersWithData:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerUpsertPatchCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCustomer***](TWCustomer*.md)| Model instance data | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpsertPutCustomers**
```objc
-(NSNumber*) customerUpsertPutCustomersWithData: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWCustomer* data = [[TWCustomer alloc] init]; // Model instance data (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance customerUpsertPutCustomersWithData:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerUpsertPutCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWCustomer***](TWCustomer*.md)| Model instance data | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpsertWithWhere**
```objc
-(NSNumber*) customerUpsertWithWhereWithWhere: (NSString*) where
    data: (TWCustomer*) data
        completionHandler: (void (^)(TWCustomer* output, NSError* error)) handler;
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
TWCustomer* data = [[TWCustomer alloc] init]; // An object of model property name/value pairs (optional)

TWCustomerApi*apiInstance = [[TWCustomerApi alloc] init];

// Update an existing model instance or insert a new one into the data source based on the where criteria.
[apiInstance customerUpsertWithWhereWithWhere:where
              data:data
          completionHandler: ^(TWCustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWCustomerApi->customerUpsertWithWhere: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWCustomer***](TWCustomer*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWCustomer***](TWCustomer.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

