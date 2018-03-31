// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GatewayProfileProtocol is JSON properties that the gateway service uses know how to communicate with the resource.
public protocol GatewayProfileProtocol : Codable {
     var dataPlaneServiceBaseAddress: String? { get set }
     var gatewayId: String? { get set }
     var environment: String? { get set }
     var upgradeManifestUrl: String? { get set }
     var messagingNamespace: String? { get set }
     var messagingAccount: String? { get set }
     var messagingKey: String? { get set }
     var requestQueue: String? { get set }
     var responseTopic: String? { get set }
     var statusBlobSignature: String? { get set }
}
