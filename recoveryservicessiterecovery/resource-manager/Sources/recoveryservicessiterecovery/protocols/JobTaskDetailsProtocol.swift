// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobTaskDetailsProtocol is this class represents a task which is actually a workflow so that one can navigate to its
// individual drill down.
public protocol JobTaskDetailsProtocol : TaskTypeDetailsProtocol {
     var jobTask: JobEntityProtocol? { get set }
}
