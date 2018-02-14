// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WorkflowRunListResultProtocol is the list of workflow runs.
public protocol WorkflowRunListResultProtocol : Codable {
     var value: [WorkflowRunProtocol?]? { get set }
     var _nextLink: String? { get set }
}
