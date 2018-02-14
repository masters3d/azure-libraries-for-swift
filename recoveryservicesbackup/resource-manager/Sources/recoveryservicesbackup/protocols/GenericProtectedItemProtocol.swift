// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GenericProtectedItemProtocol is base class for backup items.
public protocol GenericProtectedItemProtocol : ProtectedItemProtocol {
     var friendlyName: String? { get set }
     var policyState: String? { get set }
     var protectionState: ProtectionStateEnum? { get set }
     var protectedItemId: Int64? { get set }
     var sourceAssociations: [String:String]? { get set }
     var fabricName: String? { get set }
}
