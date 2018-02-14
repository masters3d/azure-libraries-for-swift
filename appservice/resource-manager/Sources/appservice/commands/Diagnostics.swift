// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Diagnostics is the webSite Management Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Diagnostics {
    public static func ExecuteSiteAnalysis(resourceGroupName: String, siteName: String, diagnosticCategory: String, analysisName: String, subscriptionId: String) -> DiagnosticsExecuteSiteAnalysis {
        return ExecuteSiteAnalysisCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, analysisName: analysisName, subscriptionId: subscriptionId)
    }
    public static func ExecuteSiteAnalysisSlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, analysisName: String, slot: String, subscriptionId: String) -> DiagnosticsExecuteSiteAnalysisSlot {
        return ExecuteSiteAnalysisSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, analysisName: analysisName, slot: slot, subscriptionId: subscriptionId)
    }
    public static func ExecuteSiteDetector(resourceGroupName: String, siteName: String, detectorName: String, diagnosticCategory: String, subscriptionId: String) -> DiagnosticsExecuteSiteDetector {
        return ExecuteSiteDetectorCommand(resourceGroupName: resourceGroupName, siteName: siteName, detectorName: detectorName, diagnosticCategory: diagnosticCategory, subscriptionId: subscriptionId)
    }
    public static func ExecuteSiteDetectorSlot(resourceGroupName: String, siteName: String, detectorName: String, diagnosticCategory: String, slot: String, subscriptionId: String) -> DiagnosticsExecuteSiteDetectorSlot {
        return ExecuteSiteDetectorSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, detectorName: detectorName, diagnosticCategory: diagnosticCategory, slot: slot, subscriptionId: subscriptionId)
    }
    public static func GetSiteAnalysis(resourceGroupName: String, siteName: String, diagnosticCategory: String, analysisName: String, subscriptionId: String) -> DiagnosticsGetSiteAnalysis {
        return GetSiteAnalysisCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, analysisName: analysisName, subscriptionId: subscriptionId)
    }
    public static func GetSiteAnalysisSlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, analysisName: String, slot: String, subscriptionId: String) -> DiagnosticsGetSiteAnalysisSlot {
        return GetSiteAnalysisSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, analysisName: analysisName, slot: slot, subscriptionId: subscriptionId)
    }
    public static func GetSiteDetector(resourceGroupName: String, siteName: String, diagnosticCategory: String, detectorName: String, subscriptionId: String) -> DiagnosticsGetSiteDetector {
        return GetSiteDetectorCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, detectorName: detectorName, subscriptionId: subscriptionId)
    }
    public static func GetSiteDetectorSlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, detectorName: String, slot: String, subscriptionId: String) -> DiagnosticsGetSiteDetectorSlot {
        return GetSiteDetectorSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, detectorName: detectorName, slot: slot, subscriptionId: subscriptionId)
    }
    public static func GetSiteDiagnosticCategory(resourceGroupName: String, siteName: String, diagnosticCategory: String, subscriptionId: String) -> DiagnosticsGetSiteDiagnosticCategory {
        return GetSiteDiagnosticCategoryCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, subscriptionId: subscriptionId)
    }
    public static func GetSiteDiagnosticCategorySlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, slot: String, subscriptionId: String) -> DiagnosticsGetSiteDiagnosticCategorySlot {
        return GetSiteDiagnosticCategorySlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, slot: slot, subscriptionId: subscriptionId)
    }
    public static func ListSiteAnalyses(resourceGroupName: String, siteName: String, diagnosticCategory: String, subscriptionId: String) -> DiagnosticsListSiteAnalyses {
        return ListSiteAnalysesCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, subscriptionId: subscriptionId)
    }
    public static func ListSiteAnalysesSlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, slot: String, subscriptionId: String) -> DiagnosticsListSiteAnalysesSlot {
        return ListSiteAnalysesSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, slot: slot, subscriptionId: subscriptionId)
    }
    public static func ListSiteDetectors(resourceGroupName: String, siteName: String, diagnosticCategory: String, subscriptionId: String) -> DiagnosticsListSiteDetectors {
        return ListSiteDetectorsCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, subscriptionId: subscriptionId)
    }
    public static func ListSiteDetectorsSlot(resourceGroupName: String, siteName: String, diagnosticCategory: String, slot: String, subscriptionId: String) -> DiagnosticsListSiteDetectorsSlot {
        return ListSiteDetectorsSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, diagnosticCategory: diagnosticCategory, slot: slot, subscriptionId: subscriptionId)
    }
    public static func ListSiteDiagnosticCategories(resourceGroupName: String, siteName: String, subscriptionId: String) -> DiagnosticsListSiteDiagnosticCategories {
        return ListSiteDiagnosticCategoriesCommand(resourceGroupName: resourceGroupName, siteName: siteName, subscriptionId: subscriptionId)
    }
    public static func ListSiteDiagnosticCategoriesSlot(resourceGroupName: String, siteName: String, slot: String, subscriptionId: String) -> DiagnosticsListSiteDiagnosticCategoriesSlot {
        return ListSiteDiagnosticCategoriesSlotCommand(resourceGroupName: resourceGroupName, siteName: siteName, slot: slot, subscriptionId: subscriptionId)
    }
}
}
