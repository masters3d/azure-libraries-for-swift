// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AutomationAccountUpdateParametersProtocol is the parameters supplied to the update automation account operation.
public protocol AutomationAccountUpdateParametersProtocol : Codable {
     var properties: AutomationAccountUpdatePropertiesProtocol { get set }
     var name: String? { get set }
     var location: String? { get set }
     var tags: [String:String]? { get set }
}
