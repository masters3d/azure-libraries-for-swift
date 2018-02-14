// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AssignmentPrincipalProtocol is the AssignmentPrincipal
public protocol AssignmentPrincipalProtocol : Codable {
     var principalId: String { get set }
     var principalType: String { get set }
     var principalMetadata: [String:String]? { get set }
}