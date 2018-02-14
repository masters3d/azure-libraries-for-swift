// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureAsyncOperationResultProtocol is the response body contains the status of the specified asynchronous operation,
// indicating whether it has succeeded, is in progress, or has failed. Note that this status is distinct from the HTTP
// status code returned for the Get Operation Status operation itself. If the asynchronous operation succeeded, the
// response body includes the HTTP status code for the successful request. If the asynchronous operation failed, the
// response body includes the HTTP status code for the failed request and error information regarding the failure.
public protocol AzureAsyncOperationResultProtocol : Codable {
     var status: NetworkOperationStatusEnum? { get set }
     var error: ErrorProtocol? { get set }
}
