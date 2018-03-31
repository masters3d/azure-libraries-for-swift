// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceTierAdvisorPropertiesProtocol is represents the properties of a Service Tier Advisor.
public protocol ServiceTierAdvisorPropertiesProtocol : Codable {
     var observationPeriodStart: Date? { get set }
     var observationPeriodEnd: Date? { get set }
     var activeTimeRatio: Double? { get set }
     var minDtu: Double? { get set }
     var avgDtu: Double? { get set }
     var maxDtu: Double? { get set }
     var maxSizeInGB: Double? { get set }
     var serviceLevelObjectiveUsageMetrics: [SloUsageMetricProtocol?]? { get set }
     var currentServiceLevelObjective: String? { get set }
     var currentServiceLevelObjectiveId: String? { get set }
     var usageBasedRecommendationServiceLevelObjective: String? { get set }
     var usageBasedRecommendationServiceLevelObjectiveId: String? { get set }
     var databaseSizeBasedRecommendationServiceLevelObjective: String? { get set }
     var databaseSizeBasedRecommendationServiceLevelObjectiveId: String? { get set }
     var disasterPlanBasedRecommendationServiceLevelObjective: String? { get set }
     var disasterPlanBasedRecommendationServiceLevelObjectiveId: String? { get set }
     var overallRecommendationServiceLevelObjective: String? { get set }
     var overallRecommendationServiceLevelObjectiveId: String? { get set }
     var confidence: Double? { get set }
}
