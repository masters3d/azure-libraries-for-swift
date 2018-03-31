// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AvroSerializationProtocol is describes how data from an input is serialized or how data is serialized when written
// to an output in Avro format.
public protocol AvroSerializationProtocol : SerializationProtocol {
     var properties: [String: String?]? { get set }
}
