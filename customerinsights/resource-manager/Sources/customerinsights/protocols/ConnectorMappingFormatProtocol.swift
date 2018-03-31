// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnectorMappingFormatProtocol is connector mapping property format.
public protocol ConnectorMappingFormatProtocol : Codable {
     var formatType: String { get set }
     var columnDelimiter: String? { get set }
     var acceptLanguage: String? { get set }
     var quoteCharacter: String? { get set }
     var quoteEscapeCharacter: String? { get set }
     var arraySeparator: String? { get set }
}
