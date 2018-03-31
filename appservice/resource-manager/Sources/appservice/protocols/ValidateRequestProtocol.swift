// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ValidateRequestProtocol is resource validation request content.
public protocol ValidateRequestProtocol : Codable {
     var name: String { get set }
     var type: ValidateResourceTypesEnum { get set }
     var location: String { get set }
     var properties: ValidatePropertiesProtocol { get set }
}
