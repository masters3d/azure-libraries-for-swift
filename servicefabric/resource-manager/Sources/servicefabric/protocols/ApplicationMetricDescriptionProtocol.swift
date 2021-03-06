// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationMetricDescriptionProtocol is describes capacity information for a custom resource balancing metric. This
// can be used to limit the total consumption of this metric by the services of this application.
public protocol ApplicationMetricDescriptionProtocol : Codable {
     var name: String? { get set }
     var maximumCapacity: Int64? { get set }
     var reservationCapacity: Int64? { get set }
     var totalApplicationCapacity: Int64? { get set }
}
