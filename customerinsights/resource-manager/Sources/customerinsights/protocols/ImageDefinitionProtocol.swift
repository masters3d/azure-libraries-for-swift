// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ImageDefinitionProtocol is the image definition.
public protocol ImageDefinitionProtocol : Codable {
     var imageExists: Bool? { get set }
     var contentUrl: String? { get set }
     var relativePath: String? { get set }
}
