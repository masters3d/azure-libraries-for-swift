// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AutomationRunbookReceiverProtocol is the Azure Automation Runbook notification receiver.
public protocol AutomationRunbookReceiverProtocol : Codable {
     var automationAccountId: String { get set }
     var runbookName: String { get set }
     var webhookResourceId: String { get set }
     var isGlobalRunbook: Bool { get set }
     var name: String? { get set }
     var serviceUri: String? { get set }
}