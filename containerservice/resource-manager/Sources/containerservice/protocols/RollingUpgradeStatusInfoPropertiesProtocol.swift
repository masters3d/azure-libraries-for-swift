// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RollingUpgradeStatusInfoPropertiesProtocol is the status of the latest virtual machine scale set rolling upgrade.
public protocol RollingUpgradeStatusInfoPropertiesProtocol : Codable {
     var policy: RollingUpgradePolicyProtocol? { get set }
     var runningStatus: RollingUpgradeRunningStatusProtocol? { get set }
     var progress: RollingUpgradeProgressInfoProtocol? { get set }
     var error: ApiErrorProtocol? { get set }
}
