# TWUserApi

All URIs are relative to *https://apidevcdn.tweak.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userConfirm**](TWUserApi.md#userconfirm) | **GET** /Users/confirm | Confirm a user registration with email verification token.
[**userCount**](TWUserApi.md#usercount) | **GET** /Users/count | Count instances of the model matched by where from the data source.
[**userCreate**](TWUserApi.md#usercreate) | **POST** /Users | Create a new instance of the model and persist it into the data source.
[**userCreateChangeStreamGetUsersChangeStream**](TWUserApi.md#usercreatechangestreamgetuserschangestream) | **GET** /Users/change-stream | Create a change stream.
[**userCreateChangeStreamPostUsersChangeStream**](TWUserApi.md#usercreatechangestreampostuserschangestream) | **POST** /Users/change-stream | Create a change stream.
[**userDeleteById**](TWUserApi.md#userdeletebyid) | **DELETE** /Users/{id} | Delete a model instance by {{id}} from the data source.
[**userExistsGetUsersidExists**](TWUserApi.md#userexistsgetusersidexists) | **GET** /Users/{id}/exists | Check whether a model instance exists in the data source.
[**userExistsHeadUsersid**](TWUserApi.md#userexistsheadusersid) | **HEAD** /Users/{id} | Check whether a model instance exists in the data source.
[**userFind**](TWUserApi.md#userfind) | **GET** /Users | Find all instances of the model matched by filter from the data source.
[**userFindById**](TWUserApi.md#userfindbyid) | **GET** /Users/{id} | Find a model instance by {{id}} from the data source.
[**userFindOne**](TWUserApi.md#userfindone) | **GET** /Users/findOne | Find first instance of the model matched by filter from the data source.
[**userLogin**](TWUserApi.md#userlogin) | **POST** /Users/login | Login a user with username/email and password.
[**userLogout**](TWUserApi.md#userlogout) | **POST** /Users/logout | Logout a user with access token.
[**userPrototypeCountAccessTokens**](TWUserApi.md#userprototypecountaccesstokens) | **GET** /Users/{id}/accessTokens/count | Counts accessTokens of User.
[**userPrototypeCreateAccessTokens**](TWUserApi.md#userprototypecreateaccesstokens) | **POST** /Users/{id}/accessTokens | Creates a new instance in accessTokens of this model.
[**userPrototypeDeleteAccessTokens**](TWUserApi.md#userprototypedeleteaccesstokens) | **DELETE** /Users/{id}/accessTokens | Deletes all accessTokens of this model.
[**userPrototypeDestroyByIdAccessTokens**](TWUserApi.md#userprototypedestroybyidaccesstokens) | **DELETE** /Users/{id}/accessTokens/{fk} | Delete a related item by id for accessTokens.
[**userPrototypeFindByIdAccessTokens**](TWUserApi.md#userprototypefindbyidaccesstokens) | **GET** /Users/{id}/accessTokens/{fk} | Find a related item by id for accessTokens.
[**userPrototypeGetAccessTokens**](TWUserApi.md#userprototypegetaccesstokens) | **GET** /Users/{id}/accessTokens | Queries accessTokens of User.
[**userPrototypeUpdateAttributesPatchUsersid**](TWUserApi.md#userprototypeupdateattributespatchusersid) | **PATCH** /Users/{id} | Patch attributes for a model instance and persist it into the data source.
[**userPrototypeUpdateAttributesPutUsersid**](TWUserApi.md#userprototypeupdateattributesputusersid) | **PUT** /Users/{id} | Patch attributes for a model instance and persist it into the data source.
[**userPrototypeUpdateByIdAccessTokens**](TWUserApi.md#userprototypeupdatebyidaccesstokens) | **PUT** /Users/{id}/accessTokens/{fk} | Update a related item by id for accessTokens.
[**userReplaceById**](TWUserApi.md#userreplacebyid) | **POST** /Users/{id}/replace | Replace attributes for a model instance and persist it into the data source.
[**userReplaceOrCreate**](TWUserApi.md#userreplaceorcreate) | **POST** /Users/replaceOrCreate | Replace an existing model instance or insert a new one into the data source.
[**userResetPassword**](TWUserApi.md#userresetpassword) | **POST** /Users/reset | Reset password for a user with email.
[**userUpdateAll**](TWUserApi.md#userupdateall) | **POST** /Users/update | Update instances of the model matched by {{where}} from the data source.
[**userUpsertPatchUsers**](TWUserApi.md#userupsertpatchusers) | **PATCH** /Users | Patch an existing model instance or insert a new one into the data source.
[**userUpsertPutUsers**](TWUserApi.md#userupsertputusers) | **PUT** /Users | Patch an existing model instance or insert a new one into the data source.
[**userUpsertWithWhere**](TWUserApi.md#userupsertwithwhere) | **POST** /Users/upsertWithWhere | Update an existing model instance or insert a new one into the data source based on the where criteria.


# **userConfirm**
```objc
-(NSNumber*) userConfirmWithUid: (NSString*) uid
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Confirm a user registration with email verification token.
[apiInstance userConfirmWithUid:uid
              token:token
              redirect:redirect
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userConfirm: %@", error);
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

# **userCount**
```objc
-(NSNumber*) userCountWithWhere: (NSString*) where
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Count instances of the model matched by where from the data source.
[apiInstance userCountWithWhere:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userCount: %@", error);
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

# **userCreate**
```objc
-(NSNumber*) userCreateWithData: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Create a new instance of the model and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWUser* data = [[TWUser alloc] init]; // Model instance data (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Create a new instance of the model and persist it into the data source.
[apiInstance userCreateWithData:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWUser***](TWUser*.md)| Model instance data | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreateChangeStreamGetUsersChangeStream**
```objc
-(NSNumber*) userCreateChangeStreamGetUsersChangeStreamWithOptions: (NSString*) options
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Create a change stream.
[apiInstance userCreateChangeStreamGetUsersChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userCreateChangeStreamGetUsersChangeStream: %@", error);
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

# **userCreateChangeStreamPostUsersChangeStream**
```objc
-(NSNumber*) userCreateChangeStreamPostUsersChangeStreamWithOptions: (NSString*) options
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Create a change stream.
[apiInstance userCreateChangeStreamPostUsersChangeStreamWithOptions:options
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userCreateChangeStreamPostUsersChangeStream: %@", error);
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

# **userDeleteById**
```objc
-(NSNumber*) userDeleteByIdWithId: (NSString*) _id
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Delete a model instance by {{id}} from the data source.
[apiInstance userDeleteByIdWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userDeleteById: %@", error);
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

# **userExistsGetUsersidExists**
```objc
-(NSNumber*) userExistsGetUsersidExistsWithId: (NSString*) _id
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance userExistsGetUsersidExistsWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userExistsGetUsersidExists: %@", error);
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

# **userExistsHeadUsersid**
```objc
-(NSNumber*) userExistsHeadUsersidWithId: (NSString*) _id
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Check whether a model instance exists in the data source.
[apiInstance userExistsHeadUsersidWithId:_id
          completionHandler: ^(TWInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userExistsHeadUsersid: %@", error);
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

# **userFind**
```objc
-(NSNumber*) userFindWithFilter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWUser>* output, NSError* error)) handler;
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Find all instances of the model matched by filter from the data source.
[apiInstance userFindWithFilter:filter
          completionHandler: ^(NSArray<TWUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userFind: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**NSArray<TWUser>***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFindById**
```objc
-(NSNumber*) userFindByIdWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Find a model instance by {{id}} from the data source.
[apiInstance userFindByIdWithId:_id
              filter:filter
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userFindById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **filter** | **NSString***| Filter defining fields and include | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFindOne**
```objc
-(NSNumber*) userFindOneWithFilter: (NSString*) filter
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Find first instance of the model matched by filter from the data source.
[apiInstance userFindOneWithFilter:filter
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userFindOne: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| Filter defining fields, where, include, order, offset, and limit | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLogin**
```objc
-(NSNumber*) userLoginWithCredentials: (NSObject*) credentials
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Login a user with username/email and password.
[apiInstance userLoginWithCredentials:credentials
              include:include
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userLogin: %@", error);
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

# **userLogout**
```objc
-(NSNumber*) userLogoutWithCompletionHandler: 
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



TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Logout a user with access token.
[apiInstance userLogoutWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userLogout: %@", error);
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

# **userPrototypeCountAccessTokens**
```objc
-(NSNumber*) userPrototypeCountAccessTokensWithId: (NSString*) _id
    where: (NSString*) where
        completionHandler: (void (^)(TWInlineResponse200* output, NSError* error)) handler;
```

Counts accessTokens of User.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // User id
NSString* where = @"where_example"; // Criteria to match model instances (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Counts accessTokens of User.
[apiInstance userPrototypeCountAccessTokensWithId:_id
              where:where
          completionHandler: ^(TWInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeCountAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **where** | **NSString***| Criteria to match model instances | [optional] 

### Return type

[**TWInlineResponse200***](TWInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeCreateAccessTokens**
```objc
-(NSNumber*) userPrototypeCreateAccessTokensWithId: (NSString*) _id
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


NSString* _id = @"_id_example"; // User id
TWAccessToken* data = [[TWAccessToken alloc] init]; //  (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Creates a new instance in accessTokens of this model.
[apiInstance userPrototypeCreateAccessTokensWithId:_id
              data:data
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeCreateAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **data** | [**TWAccessToken***](TWAccessToken*.md)|  | [optional] 

### Return type

[**TWAccessToken***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeDeleteAccessTokens**
```objc
-(NSNumber*) userPrototypeDeleteAccessTokensWithId: (NSString*) _id
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


NSString* _id = @"_id_example"; // User id

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Deletes all accessTokens of this model.
[apiInstance userPrototypeDeleteAccessTokensWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeDeleteAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeDestroyByIdAccessTokens**
```objc
-(NSNumber*) userPrototypeDestroyByIdAccessTokensWithId: (NSString*) _id
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


NSString* _id = @"_id_example"; // User id
NSString* fk = @"fk_example"; // Foreign key for accessTokens

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Delete a related item by id for accessTokens.
[apiInstance userPrototypeDestroyByIdAccessTokensWithId:_id
              fk:fk
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeDestroyByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **fk** | **NSString***| Foreign key for accessTokens | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeFindByIdAccessTokens**
```objc
-(NSNumber*) userPrototypeFindByIdAccessTokensWithId: (NSString*) _id
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


NSString* _id = @"_id_example"; // User id
NSString* fk = @"fk_example"; // Foreign key for accessTokens

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Find a related item by id for accessTokens.
[apiInstance userPrototypeFindByIdAccessTokensWithId:_id
              fk:fk
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeFindByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **fk** | **NSString***| Foreign key for accessTokens | 

### Return type

[**TWAccessToken***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeGetAccessTokens**
```objc
-(NSNumber*) userPrototypeGetAccessTokensWithId: (NSString*) _id
    filter: (NSString*) filter
        completionHandler: (void (^)(NSArray<TWAccessToken>* output, NSError* error)) handler;
```

Queries accessTokens of User.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // User id
NSString* filter = @"filter_example"; //  (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Queries accessTokens of User.
[apiInstance userPrototypeGetAccessTokensWithId:_id
              filter:filter
          completionHandler: ^(NSArray<TWAccessToken>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeGetAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **filter** | **NSString***|  | [optional] 

### Return type

[**NSArray<TWAccessToken>***](TWAccessToken.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeUpdateAttributesPatchUsersid**
```objc
-(NSNumber*) userPrototypeUpdateAttributesPatchUsersidWithId: (NSString*) _id
    data: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // User id
TWUser* data = [[TWUser alloc] init]; // An object of model property name/value pairs (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance userPrototypeUpdateAttributesPatchUsersidWithId:_id
              data:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeUpdateAttributesPatchUsersid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **data** | [**TWUser***](TWUser*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeUpdateAttributesPutUsersid**
```objc
-(NSNumber*) userPrototypeUpdateAttributesPutUsersidWithId: (NSString*) _id
    data: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Patch attributes for a model instance and persist it into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


NSString* _id = @"_id_example"; // User id
TWUser* data = [[TWUser alloc] init]; // An object of model property name/value pairs (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Patch attributes for a model instance and persist it into the data source.
[apiInstance userPrototypeUpdateAttributesPutUsersidWithId:_id
              data:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeUpdateAttributesPutUsersid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
 **data** | [**TWUser***](TWUser*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPrototypeUpdateByIdAccessTokens**
```objc
-(NSNumber*) userPrototypeUpdateByIdAccessTokensWithId: (NSString*) _id
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


NSString* _id = @"_id_example"; // User id
NSString* fk = @"fk_example"; // Foreign key for accessTokens
TWAccessToken* data = [[TWAccessToken alloc] init]; //  (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Update a related item by id for accessTokens.
[apiInstance userPrototypeUpdateByIdAccessTokensWithId:_id
              fk:fk
              data:data
          completionHandler: ^(TWAccessToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userPrototypeUpdateByIdAccessTokens: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| User id | 
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

# **userReplaceById**
```objc
-(NSNumber*) userReplaceByIdWithId: (NSString*) _id
    data: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
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
TWUser* data = [[TWUser alloc] init]; // Model instance data (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Replace attributes for a model instance and persist it into the data source.
[apiInstance userReplaceByIdWithId:_id
              data:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userReplaceById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Model id | 
 **data** | [**TWUser***](TWUser*.md)| Model instance data | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userReplaceOrCreate**
```objc
-(NSNumber*) userReplaceOrCreateWithData: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Replace an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWUser* data = [[TWUser alloc] init]; // Model instance data (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Replace an existing model instance or insert a new one into the data source.
[apiInstance userReplaceOrCreateWithData:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userReplaceOrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWUser***](TWUser*.md)| Model instance data | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetPassword**
```objc
-(NSNumber*) userResetPasswordWithOptions: (NSObject*) options
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

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Reset password for a user with email.
[apiInstance userResetPasswordWithOptions:options
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userResetPassword: %@", error);
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

# **userUpdateAll**
```objc
-(NSNumber*) userUpdateAllWithWhere: (NSString*) where
    data: (TWUser*) data
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
TWUser* data = [[TWUser alloc] init]; // An object of model property name/value pairs (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Update instances of the model matched by {{where}} from the data source.
[apiInstance userUpdateAllWithWhere:where
              data:data
          completionHandler: ^(TWInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userUpdateAll: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWUser***](TWUser*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWInlineResponse2001***](TWInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpsertPatchUsers**
```objc
-(NSNumber*) userUpsertPatchUsersWithData: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWUser* data = [[TWUser alloc] init]; // Model instance data (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance userUpsertPatchUsersWithData:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userUpsertPatchUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWUser***](TWUser*.md)| Model instance data | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpsertPutUsers**
```objc
-(NSNumber*) userUpsertPutUsersWithData: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
```

Patch an existing model instance or insert a new one into the data source.

### Example 
```objc
TWConfiguration *apiConfig = [TWConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];


TWUser* data = [[TWUser alloc] init]; // Model instance data (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Patch an existing model instance or insert a new one into the data source.
[apiInstance userUpsertPutUsersWithData:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userUpsertPutUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TWUser***](TWUser*.md)| Model instance data | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpsertWithWhere**
```objc
-(NSNumber*) userUpsertWithWhereWithWhere: (NSString*) where
    data: (TWUser*) data
        completionHandler: (void (^)(TWUser* output, NSError* error)) handler;
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
TWUser* data = [[TWUser alloc] init]; // An object of model property name/value pairs (optional)

TWUserApi*apiInstance = [[TWUserApi alloc] init];

// Update an existing model instance or insert a new one into the data source based on the where criteria.
[apiInstance userUpsertWithWhereWithWhere:where
              data:data
          completionHandler: ^(TWUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TWUserApi->userUpsertWithWhere: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **where** | **NSString***| Criteria to match model instances | [optional] 
 **data** | [**TWUser***](TWUser*.md)| An object of model property name/value pairs | [optional] 

### Return type

[**TWUser***](TWUser.md)

### Authorization

[access_token](../README.md#access_token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, application/xml, text/xml
 - **Accept**: application/json, application/xml, text/xml, application/javascript, text/javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

