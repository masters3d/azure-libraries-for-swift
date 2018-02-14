// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AgentRegistrationProtocol is definition of the agent registration infomration type.
public protocol AgentRegistrationProtocol : Codable {
     var dscMetaConfiguration: String? { get set }
     var endpoint: String? { get set }
     var keys: AgentRegistrationKeysProtocol? { get set }
     var id: String? { get set }
}