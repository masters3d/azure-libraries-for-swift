// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CloudErrorProtocol is an error response from the Batch AI service.
public protocol CloudErrorProtocol : Codable {
     var error: CloudErrorBodyProtocol? { get set }
}
