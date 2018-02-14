// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RampUpRuleProtocol is routing rules for ramp up testing. This rule allows to redirect static traffic % to a slot or
// to gradually change routing % based on performance.
public protocol RampUpRuleProtocol : Codable {
     var actionHostName: String? { get set }
     var reroutePercentage: Double? { get set }
     var changeStep: Double? { get set }
     var changeIntervalInMinutes: Int32? { get set }
     var minReroutePercentage: Double? { get set }
     var maxReroutePercentage: Double? { get set }
     var changeDecisionCallbackUrl: String? { get set }
     var name: String? { get set }
}
