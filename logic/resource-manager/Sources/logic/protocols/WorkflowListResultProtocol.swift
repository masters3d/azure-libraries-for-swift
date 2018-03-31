// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WorkflowListResultProtocol is the list of workflows.
public protocol WorkflowListResultProtocol : Codable {
     var value: [WorkflowProtocol?]? { get set }
     var _nextLink: String? { get set }
}
