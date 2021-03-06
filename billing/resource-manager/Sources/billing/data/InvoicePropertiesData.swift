// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InvoicePropertiesData : InvoicePropertiesProtocol {
    public var downloadUrl: DownloadUrlProtocol?
    public var invoicePeriodStartDate: Date?
    public var invoicePeriodEndDate: Date?
    public var billingPeriodIds: [String]?

        enum CodingKeys: String, CodingKey {case downloadUrl = "downloadUrl"
        case invoicePeriodStartDate = "invoicePeriodStartDate"
        case invoicePeriodEndDate = "invoicePeriodEndDate"
        case billingPeriodIds = "billingPeriodIds"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.downloadUrl) {
        self.downloadUrl = try container.decode(DownloadUrlData?.self, forKey: .downloadUrl)
    }
    if container.contains(.invoicePeriodStartDate) {
        self.invoicePeriodStartDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .invoicePeriodStartDate)), format: .date)
    }
    if container.contains(.invoicePeriodEndDate) {
        self.invoicePeriodEndDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .invoicePeriodEndDate)), format: .date)
    }
    if container.contains(.billingPeriodIds) {
        self.billingPeriodIds = try container.decode([String]?.self, forKey: .billingPeriodIds)
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
    if self.downloadUrl != nil {try container.encode(self.downloadUrl as! DownloadUrlData?, forKey: .downloadUrl)}
    if self.invoicePeriodStartDate != nil {
        try container.encode(DateConverter.toString(date: self.invoicePeriodStartDate!, format: .date), forKey: .invoicePeriodStartDate)
    }
    if self.invoicePeriodEndDate != nil {
        try container.encode(DateConverter.toString(date: self.invoicePeriodEndDate!, format: .date), forKey: .invoicePeriodEndDate)
    }
    if self.billingPeriodIds != nil {try container.encode(self.billingPeriodIds as! [String]?, forKey: .billingPeriodIds)}
  }
}

extension DataFactory {
  public static func createInvoicePropertiesProtocol() -> InvoicePropertiesProtocol {
    return InvoicePropertiesData()
  }
}
