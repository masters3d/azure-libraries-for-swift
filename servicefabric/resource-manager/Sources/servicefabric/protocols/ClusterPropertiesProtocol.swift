// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClusterPropertiesProtocol is describes the cluster resource properties.
public protocol ClusterPropertiesProtocol : Codable {
     var availableClusterVersions: [ClusterVersionDetailsProtocol?]? { get set }
     var clusterId: String? { get set }
     var clusterState: ClusterStateEnum? { get set }
     var clusterEndpoint: String? { get set }
     var clusterCodeVersion: String? { get set }
     var certificate: CertificateDescriptionProtocol? { get set }
     var reliabilityLevel: ReliabilityLevelEnum? { get set }
     var upgradeMode: UpgradeModeEnum? { get set }
     var clientCertificateThumbprints: [ClientCertificateThumbprintProtocol?]? { get set }
     var clientCertificateCommonNames: [ClientCertificateCommonNameProtocol?]? { get set }
     var fabricSettings: [SettingsSectionDescriptionProtocol?]? { get set }
     var reverseProxyCertificate: CertificateDescriptionProtocol? { get set }
     var managementEndpoint: String { get set }
     var nodeTypes: [NodeTypeDescriptionProtocol] { get set }
     var azureActiveDirectory: AzureActiveDirectoryProtocol? { get set }
     var provisioningState: ProvisioningStateEnum? { get set }
     var vmImage: String? { get set }
     var diagnosticsStorageAccountConfig: DiagnosticsStorageAccountConfigProtocol? { get set }
     var upgradeDescription: ClusterUpgradePolicyProtocol? { get set }
     var addOnFeatures: [String?]? { get set }
}
