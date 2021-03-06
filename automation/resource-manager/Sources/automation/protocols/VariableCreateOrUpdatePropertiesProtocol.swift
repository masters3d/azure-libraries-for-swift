// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VariableCreateOrUpdatePropertiesProtocol is the properties of the create variable operation.
public protocol VariableCreateOrUpdatePropertiesProtocol : Codable {
     var value: String? { get set }
     var description: String? { get set }
     var isEncrypted: Bool? { get set }
}
