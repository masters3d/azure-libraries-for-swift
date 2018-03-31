// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FilePropertiesProtocol is
public protocol FilePropertiesProtocol : Codable {
     var creationTime: Date? { get set }
     var lastModified: Date { get set }
     var contentLength: Int64 { get set }
     var contentType: String? { get set }
     var fileMode: String? { get set }
}
