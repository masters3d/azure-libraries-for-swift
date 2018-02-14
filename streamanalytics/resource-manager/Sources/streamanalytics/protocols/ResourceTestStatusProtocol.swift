// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceTestStatusProtocol is describes the status of the test operation along with error information, if
// applicable.
public protocol ResourceTestStatusProtocol : Codable {
     var status: String? { get set }
     var error: ErrorResponseProtocol? { get set }
}
