// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LogSettingsProtocol is part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.
public protocol LogSettingsProtocol : Codable {
     var category: String? { get set }
     var enabled: Bool { get set }
     var retentionPolicy: RetentionPolicyProtocol? { get set }
}
