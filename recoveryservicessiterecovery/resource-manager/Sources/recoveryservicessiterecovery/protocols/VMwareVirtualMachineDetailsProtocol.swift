// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VMwareVirtualMachineDetailsProtocol is vMware provider specific settings
public protocol VMwareVirtualMachineDetailsProtocol : ConfigurationSettingsProtocol {
     var agentGeneratedId: String? { get set }
     var agentInstalled: String? { get set }
     var osType: String? { get set }
     var agentVersion: String? { get set }
     var ipAddress: String? { get set }
     var poweredOn: String? { get set }
     var vCenterInfrastructureId: String? { get set }
     var discoveryType: String? { get set }
     var diskDetails: [InMageDiskDetailsProtocol?]? { get set }
     var validationErrors: [HealthErrorProtocol?]? { get set }
}
