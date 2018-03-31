// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BudgetPropertiesProtocol is the properties of the budget.
public protocol BudgetPropertiesProtocol : Codable {
     var category: CategoryTypeEnum { get set }
     var amount: Decimal { get set }
     var timeGrain: TimeGrainTypeEnum { get set }
     var timePeriod: BudgetTimePeriodProtocol { get set }
     var filters: FiltersProtocol? { get set }
     var currentSpend: CurrentSpendProtocol? { get set }
     var notifications: [String:NotificationProtocol?]? { get set }
}
