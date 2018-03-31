// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BillingPeriodsListResultProtocol is result of listing billing periods. It contains a list of available billing
// periods in reverse chronological order.
public protocol BillingPeriodsListResultProtocol : Codable {
     var value: [BillingPeriodProtocol?]? { get set }
     var _nextLink: String? { get set }
}
