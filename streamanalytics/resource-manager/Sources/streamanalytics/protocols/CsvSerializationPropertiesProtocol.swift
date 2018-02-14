// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CsvSerializationPropertiesProtocol is the properties that are associated with the CSV serialization type.
public protocol CsvSerializationPropertiesProtocol : Codable {
     var fieldDelimiter: String? { get set }
     var encoding: EncodingEnum? { get set }
}