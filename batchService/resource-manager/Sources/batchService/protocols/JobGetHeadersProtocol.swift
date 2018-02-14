// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobGetHeadersProtocol is defines headers for Get operation.
public protocol JobGetHeadersProtocol : Codable {
     var clientRequestId: String? { get set }
     var requestId: String? { get set }
     var eTag: String? { get set }
     var lastModified: Date? { get set }
}
