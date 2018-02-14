// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActionGroupPatchBodyProtocol is an action group object for the body of patch operations.
public protocol ActionGroupPatchBodyProtocol : Codable {
     var tags: [String:String]? { get set }
     var properties: ActionGroupPatchProtocol? { get set }
}
