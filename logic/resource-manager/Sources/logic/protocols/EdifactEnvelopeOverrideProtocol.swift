// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EdifactEnvelopeOverrideProtocol is the Edifact enevlope override settings.
public protocol EdifactEnvelopeOverrideProtocol : Codable {
     var messageId: String? { get set }
     var messageVersion: String? { get set }
     var messageRelease: String? { get set }
     var messageAssociationAssignedCode: String? { get set }
     var targetNamespace: String? { get set }
     var functionalGroupId: String? { get set }
     var senderApplicationQualifier: String? { get set }
     var senderApplicationId: String? { get set }
     var receiverApplicationQualifier: String? { get set }
     var receiverApplicationId: String? { get set }
     var controllingAgencyCode: String? { get set }
     var groupHeaderMessageVersion: String? { get set }
     var groupHeaderMessageRelease: String? { get set }
     var associationAssignedCode: String? { get set }
     var applicationPassword: String? { get set }
}
