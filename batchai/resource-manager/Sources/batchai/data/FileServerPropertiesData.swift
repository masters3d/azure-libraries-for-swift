// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FileServerPropertiesData : FileServerPropertiesProtocol {
    public var vmSize: String?
    public var sshConfiguration: SshConfigurationProtocol?
    public var dataDisks: DataDisksProtocol?
    public var subnet: ResourceIdProtocol?
    public var mountSettings: MountSettingsProtocol?
    public var provisioningStateTransitionTime: Date?
    public var creationTime: Date?
    public var provisioningState: FileServerProvisioningStateEnum?

        enum CodingKeys: String, CodingKey {case vmSize = "vmSize"
        case sshConfiguration = "sshConfiguration"
        case dataDisks = "dataDisks"
        case subnet = "subnet"
        case mountSettings = "mountSettings"
        case provisioningStateTransitionTime = "provisioningStateTransitionTime"
        case creationTime = "creationTime"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vmSize) {
        self.vmSize = try container.decode(String?.self, forKey: .vmSize)
    }
    if container.contains(.sshConfiguration) {
        self.sshConfiguration = try container.decode(SshConfigurationData?.self, forKey: .sshConfiguration)
    }
    if container.contains(.dataDisks) {
        self.dataDisks = try container.decode(DataDisksData?.self, forKey: .dataDisks)
    }
    if container.contains(.subnet) {
        self.subnet = try container.decode(ResourceIdData?.self, forKey: .subnet)
    }
    if container.contains(.mountSettings) {
        self.mountSettings = try container.decode(MountSettingsData?.self, forKey: .mountSettings)
    }
    if container.contains(.provisioningStateTransitionTime) {
        self.provisioningStateTransitionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .provisioningStateTransitionTime)), format: .dateTime)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(FileServerProvisioningStateEnum?.self, forKey: .provisioningState)
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
    if self.vmSize != nil {try container.encode(self.vmSize, forKey: .vmSize)}
    if self.sshConfiguration != nil {try container.encode(self.sshConfiguration as! SshConfigurationData?, forKey: .sshConfiguration)}
    if self.dataDisks != nil {try container.encode(self.dataDisks as! DataDisksData?, forKey: .dataDisks)}
    if self.subnet != nil {try container.encode(self.subnet as! ResourceIdData?, forKey: .subnet)}
    if self.mountSettings != nil {try container.encode(self.mountSettings as! MountSettingsData?, forKey: .mountSettings)}
    if self.provisioningStateTransitionTime != nil {
        try container.encode(DateConverter.toString(date: self.provisioningStateTransitionTime!, format: .dateTime), forKey: .provisioningStateTransitionTime)
    }
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createFileServerPropertiesProtocol() -> FileServerPropertiesProtocol {
    return FileServerPropertiesData()
  }
}