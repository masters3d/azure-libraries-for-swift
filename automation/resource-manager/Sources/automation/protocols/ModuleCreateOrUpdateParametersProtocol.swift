// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ModuleCreateOrUpdateParametersProtocol is the parameters supplied to the create or update module operation.
public protocol ModuleCreateOrUpdateParametersProtocol : Codable {
     var properties: ModuleCreateOrUpdatePropertiesProtocol { get set }
     var name: String? { get set }
     var location: String? { get set }
     var tags: [String:String]? { get set }
}
