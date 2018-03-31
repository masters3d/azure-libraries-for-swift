// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanAutomationRunbookActionDetailsProtocol is recovery plan Automation runbook action details.
public protocol RecoveryPlanAutomationRunbookActionDetailsProtocol : RecoveryPlanActionDetailsProtocol {
     var runbookId: String? { get set }
     var timeout: String? { get set }
     var fabricLocation: RecoveryPlanActionLocationEnum { get set }
}
