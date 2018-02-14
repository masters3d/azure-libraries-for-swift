// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FileGetFromTaskHeadersProtocol is defines headers for GetFromTask operation.
public protocol FileGetFromTaskHeadersProtocol : Codable {
     var clientRequestId: String? { get set }
     var requestId: String? { get set }
     var eTag: String? { get set }
     var lastModified: Date? { get set }
     var ocpCreationTime: Date? { get set }
     var ocpBatchFileIsdirectory: Bool? { get set }
     var ocpBatchFileUrl: String? { get set }
     var ocpBatchFileMode: String? { get set }
     var contentType: String? { get set }
     var contentLength: Int64? { get set }
}
