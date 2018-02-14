// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FileProtocol is properties of the file.
public protocol FileProtocol : Codable {
     var name: String { get set }
     var downloadUrl: String { get set }
     var properties: FilePropertiesProtocol? { get set }
}
