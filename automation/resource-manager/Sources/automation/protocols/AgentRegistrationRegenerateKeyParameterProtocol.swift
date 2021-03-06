// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AgentRegistrationRegenerateKeyParameterProtocol is the parameters supplied to the regenerate keys operation.
public protocol AgentRegistrationRegenerateKeyParameterProtocol : Codable {
     var keyName: AgentRegistrationKeyNameEnum { get set }
     var name: String? { get set }
     var location: String? { get set }
     var tags: [String:String]? { get set }
}
