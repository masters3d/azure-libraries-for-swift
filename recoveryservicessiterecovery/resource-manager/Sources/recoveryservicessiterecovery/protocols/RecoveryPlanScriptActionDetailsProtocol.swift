// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanScriptActionDetailsProtocol is recovery plan script action details.
public protocol RecoveryPlanScriptActionDetailsProtocol : RecoveryPlanActionDetailsProtocol {
     var path: String { get set }
     var timeout: String? { get set }
     var fabricLocation: RecoveryPlanActionLocationEnum { get set }
}