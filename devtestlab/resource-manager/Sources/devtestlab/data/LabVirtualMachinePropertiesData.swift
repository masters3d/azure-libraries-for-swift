// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LabVirtualMachinePropertiesData : LabVirtualMachinePropertiesProtocol {
    public var notes: String?
    public var ownerObjectId: String?
    public var ownerUserPrincipalName: String?
    public var createdByUserId: String?
    public var createdByUser: String?
    public var createdDate: Date?
    public var computeId: String?
    public var customImageId: String?
    public var osType: String?
    public var size: String?
    public var userName: String?
    public var password: String?
    public var sshKey: String?
    public var isAuthenticationWithSshKey: Bool?
    public var fqdn: String?
    public var labSubnetName: String?
    public var labVirtualNetworkId: String?
    public var disallowPublicIpAddress: Bool?
    public var artifacts: [ArtifactInstallPropertiesProtocol?]?
    public var artifactDeploymentStatus: ArtifactDeploymentStatusPropertiesProtocol?
    public var galleryImageReference: GalleryImageReferenceProtocol?
    public var computeVm: ComputeVmPropertiesProtocol?
    public var networkInterface: NetworkInterfacePropertiesProtocol?
    public var applicableSchedule: ApplicableScheduleProtocol?
    public var expirationDate: Date?
    public var allowClaim: Bool?
    public var storageType: String?
    public var virtualMachineCreationSource: VirtualMachineCreationSourceEnum?
    public var environmentId: String?
    public var provisioningState: String?
    public var uniqueIdentifier: String?

        enum CodingKeys: String, CodingKey {case notes = "notes"
        case ownerObjectId = "ownerObjectId"
        case ownerUserPrincipalName = "ownerUserPrincipalName"
        case createdByUserId = "createdByUserId"
        case createdByUser = "createdByUser"
        case createdDate = "createdDate"
        case computeId = "computeId"
        case customImageId = "customImageId"
        case osType = "osType"
        case size = "size"
        case userName = "userName"
        case password = "password"
        case sshKey = "sshKey"
        case isAuthenticationWithSshKey = "isAuthenticationWithSshKey"
        case fqdn = "fqdn"
        case labSubnetName = "labSubnetName"
        case labVirtualNetworkId = "labVirtualNetworkId"
        case disallowPublicIpAddress = "disallowPublicIpAddress"
        case artifacts = "artifacts"
        case artifactDeploymentStatus = "artifactDeploymentStatus"
        case galleryImageReference = "galleryImageReference"
        case computeVm = "computeVm"
        case networkInterface = "networkInterface"
        case applicableSchedule = "applicableSchedule"
        case expirationDate = "expirationDate"
        case allowClaim = "allowClaim"
        case storageType = "storageType"
        case virtualMachineCreationSource = "virtualMachineCreationSource"
        case environmentId = "environmentId"
        case provisioningState = "provisioningState"
        case uniqueIdentifier = "uniqueIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.notes) {
        self.notes = try container.decode(String?.self, forKey: .notes)
    }
    if container.contains(.ownerObjectId) {
        self.ownerObjectId = try container.decode(String?.self, forKey: .ownerObjectId)
    }
    if container.contains(.ownerUserPrincipalName) {
        self.ownerUserPrincipalName = try container.decode(String?.self, forKey: .ownerUserPrincipalName)
    }
    if container.contains(.createdByUserId) {
        self.createdByUserId = try container.decode(String?.self, forKey: .createdByUserId)
    }
    if container.contains(.createdByUser) {
        self.createdByUser = try container.decode(String?.self, forKey: .createdByUser)
    }
    if container.contains(.createdDate) {
        self.createdDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDate)), format: .dateTime)
    }
    if container.contains(.computeId) {
        self.computeId = try container.decode(String?.self, forKey: .computeId)
    }
    if container.contains(.customImageId) {
        self.customImageId = try container.decode(String?.self, forKey: .customImageId)
    }
    if container.contains(.osType) {
        self.osType = try container.decode(String?.self, forKey: .osType)
    }
    if container.contains(.size) {
        self.size = try container.decode(String?.self, forKey: .size)
    }
    if container.contains(.userName) {
        self.userName = try container.decode(String?.self, forKey: .userName)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
    }
    if container.contains(.sshKey) {
        self.sshKey = try container.decode(String?.self, forKey: .sshKey)
    }
    if container.contains(.isAuthenticationWithSshKey) {
        self.isAuthenticationWithSshKey = try container.decode(Bool?.self, forKey: .isAuthenticationWithSshKey)
    }
    if container.contains(.fqdn) {
        self.fqdn = try container.decode(String?.self, forKey: .fqdn)
    }
    if container.contains(.labSubnetName) {
        self.labSubnetName = try container.decode(String?.self, forKey: .labSubnetName)
    }
    if container.contains(.labVirtualNetworkId) {
        self.labVirtualNetworkId = try container.decode(String?.self, forKey: .labVirtualNetworkId)
    }
    if container.contains(.disallowPublicIpAddress) {
        self.disallowPublicIpAddress = try container.decode(Bool?.self, forKey: .disallowPublicIpAddress)
    }
    if container.contains(.artifacts) {
        self.artifacts = try container.decode([ArtifactInstallPropertiesData?]?.self, forKey: .artifacts)
    }
    if container.contains(.artifactDeploymentStatus) {
        self.artifactDeploymentStatus = try container.decode(ArtifactDeploymentStatusPropertiesData?.self, forKey: .artifactDeploymentStatus)
    }
    if container.contains(.galleryImageReference) {
        self.galleryImageReference = try container.decode(GalleryImageReferenceData?.self, forKey: .galleryImageReference)
    }
    if container.contains(.computeVm) {
        self.computeVm = try container.decode(ComputeVmPropertiesData?.self, forKey: .computeVm)
    }
    if container.contains(.networkInterface) {
        self.networkInterface = try container.decode(NetworkInterfacePropertiesData?.self, forKey: .networkInterface)
    }
    if container.contains(.applicableSchedule) {
        self.applicableSchedule = try container.decode(ApplicableScheduleData?.self, forKey: .applicableSchedule)
    }
    if container.contains(.expirationDate) {
        self.expirationDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expirationDate)), format: .dateTime)
    }
    if container.contains(.allowClaim) {
        self.allowClaim = try container.decode(Bool?.self, forKey: .allowClaim)
    }
    if container.contains(.storageType) {
        self.storageType = try container.decode(String?.self, forKey: .storageType)
    }
    if container.contains(.virtualMachineCreationSource) {
        self.virtualMachineCreationSource = try container.decode(VirtualMachineCreationSourceEnum?.self, forKey: .virtualMachineCreationSource)
    }
    if container.contains(.environmentId) {
        self.environmentId = try container.decode(String?.self, forKey: .environmentId)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.uniqueIdentifier) {
        self.uniqueIdentifier = try container.decode(String?.self, forKey: .uniqueIdentifier)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.notes != nil {try container.encode(self.notes, forKey: .notes)}
    if self.ownerObjectId != nil {try container.encode(self.ownerObjectId, forKey: .ownerObjectId)}
    if self.ownerUserPrincipalName != nil {try container.encode(self.ownerUserPrincipalName, forKey: .ownerUserPrincipalName)}
    if self.createdByUserId != nil {try container.encode(self.createdByUserId, forKey: .createdByUserId)}
    if self.createdByUser != nil {try container.encode(self.createdByUser, forKey: .createdByUser)}
    if self.createdDate != nil {
        try container.encode(DateConverter.toString(date: self.createdDate!, format: .dateTime), forKey: .createdDate)
    }
    if self.computeId != nil {try container.encode(self.computeId, forKey: .computeId)}
    if self.customImageId != nil {try container.encode(self.customImageId, forKey: .customImageId)}
    if self.osType != nil {try container.encode(self.osType, forKey: .osType)}
    if self.size != nil {try container.encode(self.size, forKey: .size)}
    if self.userName != nil {try container.encode(self.userName, forKey: .userName)}
    if self.password != nil {try container.encode(self.password, forKey: .password)}
    if self.sshKey != nil {try container.encode(self.sshKey, forKey: .sshKey)}
    if self.isAuthenticationWithSshKey != nil {try container.encode(self.isAuthenticationWithSshKey, forKey: .isAuthenticationWithSshKey)}
    if self.fqdn != nil {try container.encode(self.fqdn, forKey: .fqdn)}
    if self.labSubnetName != nil {try container.encode(self.labSubnetName, forKey: .labSubnetName)}
    if self.labVirtualNetworkId != nil {try container.encode(self.labVirtualNetworkId, forKey: .labVirtualNetworkId)}
    if self.disallowPublicIpAddress != nil {try container.encode(self.disallowPublicIpAddress, forKey: .disallowPublicIpAddress)}
    if self.artifacts != nil {try container.encode(self.artifacts as! [ArtifactInstallPropertiesData?]?, forKey: .artifacts)}
    if self.artifactDeploymentStatus != nil {try container.encode(self.artifactDeploymentStatus as! ArtifactDeploymentStatusPropertiesData?, forKey: .artifactDeploymentStatus)}
    if self.galleryImageReference != nil {try container.encode(self.galleryImageReference as! GalleryImageReferenceData?, forKey: .galleryImageReference)}
    if self.computeVm != nil {try container.encode(self.computeVm as! ComputeVmPropertiesData?, forKey: .computeVm)}
    if self.networkInterface != nil {try container.encode(self.networkInterface as! NetworkInterfacePropertiesData?, forKey: .networkInterface)}
    if self.applicableSchedule != nil {try container.encode(self.applicableSchedule as! ApplicableScheduleData?, forKey: .applicableSchedule)}
    if self.expirationDate != nil {
        try container.encode(DateConverter.toString(date: self.expirationDate!, format: .dateTime), forKey: .expirationDate)
    }
    if self.allowClaim != nil {try container.encode(self.allowClaim, forKey: .allowClaim)}
    if self.storageType != nil {try container.encode(self.storageType, forKey: .storageType)}
    if self.virtualMachineCreationSource != nil {try container.encode(self.virtualMachineCreationSource, forKey: .virtualMachineCreationSource)}
    if self.environmentId != nil {try container.encode(self.environmentId, forKey: .environmentId)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.uniqueIdentifier != nil {try container.encode(self.uniqueIdentifier, forKey: .uniqueIdentifier)}
  }
}

extension DataFactory {
  public static func createLabVirtualMachinePropertiesProtocol() -> LabVirtualMachinePropertiesProtocol {
    return LabVirtualMachinePropertiesData()
  }
}
