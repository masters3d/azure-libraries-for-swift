// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMageAgentDetailsProtocol is the details of the InMage agent.
public protocol InMageAgentDetailsProtocol : Codable {
     var agentVersion: String? { get set }
     var agentUpdateStatus: String? { get set }
     var postUpdateRebootStatus: String? { get set }
}
