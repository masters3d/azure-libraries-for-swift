// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WorkflowRunActionListResultProtocol is the list of workflow run actions.
public protocol WorkflowRunActionListResultProtocol : Codable {
     var value: [WorkflowRunActionProtocol?]? { get set }
     var _nextLink: String? { get set }
}
