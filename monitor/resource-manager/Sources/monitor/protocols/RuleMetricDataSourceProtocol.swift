// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RuleMetricDataSourceProtocol is a rule metric data source. The discriminator value is always RuleMetricDataSource in
// this case.
public protocol RuleMetricDataSourceProtocol : RuleDataSourceProtocol {
     var metricName: String? { get set }
}
