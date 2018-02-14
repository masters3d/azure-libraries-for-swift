// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProtectionContainerPropertiesProtocol is protection profile custom data details.
public protocol ProtectionContainerPropertiesProtocol : Codable {
     var fabricFriendlyName: String? { get set }
     var friendlyName: String? { get set }
     var fabricType: String? { get set }
     var protectedItemCount: Int32? { get set }
     var pairingStatus: String? { get set }
     var role: String? { get set }
     var fabricSpecificDetails: ProtectionContainerFabricSpecificDetailsProtocol? { get set }
}
