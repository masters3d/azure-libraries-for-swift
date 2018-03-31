// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InvoicePropertiesProtocol is the properties of the invoice.
public protocol InvoicePropertiesProtocol : Codable {
     var downloadUrl: DownloadUrlProtocol? { get set }
     var invoicePeriodStartDate: Date? { get set }
     var invoicePeriodEndDate: Date? { get set }
     var billingPeriodIds: [String]? { get set }
}
