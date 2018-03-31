// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AS2OneWayAgreementProtocol is the integration account AS2 oneway agreement.
public protocol AS2OneWayAgreementProtocol : Codable {
     var senderBusinessIdentity: BusinessIdentityProtocol { get set }
     var receiverBusinessIdentity: BusinessIdentityProtocol { get set }
     var protocolSettings: AS2ProtocolSettingsProtocol { get set }
}
