// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AS2AgreementContentProtocol is the integration account AS2 agreement content.
public protocol AS2AgreementContentProtocol : Codable {
     var receiveAgreement: AS2OneWayAgreementProtocol { get set }
     var sendAgreement: AS2OneWayAgreementProtocol { get set }
}
