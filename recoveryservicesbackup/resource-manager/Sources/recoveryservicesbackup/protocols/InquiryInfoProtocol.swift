// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InquiryInfoProtocol is details about inquired protectable items under a given container.
public protocol InquiryInfoProtocol : Codable {
     var status: String? { get set }
     var errorDetail: ErrorDetailProtocol? { get set }
     var inquiryDetails: [WorkloadInquiryDetailsProtocol?]? { get set }
}
