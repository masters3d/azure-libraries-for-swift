// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryServicesProviderPropertiesProtocol is recovery services provider properties.
public protocol RecoveryServicesProviderPropertiesProtocol : Codable {
     var fabricType: String? { get set }
     var friendlyName: String? { get set }
     var providerVersion: String? { get set }
     var serverVersion: String? { get set }
     var providerVersionState: String? { get set }
     var providerVersionExpiryDate: Date? { get set }
     var fabricFriendlyName: String? { get set }
     var lastHeartBeat: Date? { get set }
     var connectionStatus: String? { get set }
     var protectedItemCount: Int32? { get set }
     var allowedScenarios: [String]? { get set }
     var healthErrorDetails: [HealthErrorProtocol?]? { get set }
     var draIdentifier: String? { get set }
     var identityDetails: IdentityInformationProtocol? { get set }
     var providerVersionDetails: VersionDetailsProtocol? { get set }
}
