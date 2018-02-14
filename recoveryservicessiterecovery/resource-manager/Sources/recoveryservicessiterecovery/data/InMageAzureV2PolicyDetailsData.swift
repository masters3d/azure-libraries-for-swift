// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAzureV2PolicyDetailsData : InMageAzureV2PolicyDetailsProtocol, PolicyProviderSpecificDetailsProtocol {
    public var crashConsistentFrequencyInMinutes: Int32?
    public var recoveryPointThresholdInMinutes: Int32?
    public var recoveryPointHistory: Int32?
    public var appConsistentFrequencyInMinutes: Int32?
    public var multiVmSyncStatus: String?

        enum CodingKeys: String, CodingKey {case crashConsistentFrequencyInMinutes = "crashConsistentFrequencyInMinutes"
        case recoveryPointThresholdInMinutes = "recoveryPointThresholdInMinutes"
        case recoveryPointHistory = "recoveryPointHistory"
        case appConsistentFrequencyInMinutes = "appConsistentFrequencyInMinutes"
        case multiVmSyncStatus = "multiVmSyncStatus"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.crashConsistentFrequencyInMinutes) {
        self.crashConsistentFrequencyInMinutes = try container.decode(Int32?.self, forKey: .crashConsistentFrequencyInMinutes)
    }
    if container.contains(.recoveryPointThresholdInMinutes) {
        self.recoveryPointThresholdInMinutes = try container.decode(Int32?.self, forKey: .recoveryPointThresholdInMinutes)
    }
    if container.contains(.recoveryPointHistory) {
        self.recoveryPointHistory = try container.decode(Int32?.self, forKey: .recoveryPointHistory)
    }
    if container.contains(.appConsistentFrequencyInMinutes) {
        self.appConsistentFrequencyInMinutes = try container.decode(Int32?.self, forKey: .appConsistentFrequencyInMinutes)
    }
    if container.contains(.multiVmSyncStatus) {
        self.multiVmSyncStatus = try container.decode(String?.self, forKey: .multiVmSyncStatus)
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
    if self.crashConsistentFrequencyInMinutes != nil {try container.encode(self.crashConsistentFrequencyInMinutes, forKey: .crashConsistentFrequencyInMinutes)}
    if self.recoveryPointThresholdInMinutes != nil {try container.encode(self.recoveryPointThresholdInMinutes, forKey: .recoveryPointThresholdInMinutes)}
    if self.recoveryPointHistory != nil {try container.encode(self.recoveryPointHistory, forKey: .recoveryPointHistory)}
    if self.appConsistentFrequencyInMinutes != nil {try container.encode(self.appConsistentFrequencyInMinutes, forKey: .appConsistentFrequencyInMinutes)}
    if self.multiVmSyncStatus != nil {try container.encode(self.multiVmSyncStatus, forKey: .multiVmSyncStatus)}
  }
}

extension DataFactory {
  public static func createInMageAzureV2PolicyDetailsProtocol() -> InMageAzureV2PolicyDetailsProtocol {
    return InMageAzureV2PolicyDetailsData()
  }
}
