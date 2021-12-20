Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable | Select-Object Name, Version
# ==================================================================================
#  VARIABLES
# ==================================================================================
$varTemplateAdminUrl = 'https://tenantname-admin.sharepoint.com'
$varTemplateSiteUrl = 'https://tenantname.sharepoint.com/sites/QA-Directories'
$varSiteScript1Name = "<<Site Script 1 Name>>"
$varSiteDesignName = "<<Site Design Name>>"
$varSiteDesignDescription = "<<Give your site design a description>>"

# ==================================================================================
# GENERATE SITE SCRIPT FROM AN EXISTING SITE
# ==================================================================================
Connect-SPOService -Url $varTemplateAdminUrl
$siteScriptXML = Get-SPOSiteScriptFromWeb -WebUrl $varTemplateSiteUrl -IncludedLists ("Documents", "Lists/List Name")

# ==================================================================================
# CREATE SITE DESIGN IN DESTINATION SITE
# ==================================================================================
$siteScriptXmlResult = Add-SPOSiteScript -Title $varSiteScript1Name -Content $siteScriptXML

Add-SPOSiteDesign -Title $varSiteDesignName -WebTemplate "64" -SiteScripts $siteScriptXmlResult.Id -Description $varSiteDesignDescription

# ==================================================================================
# UPDATE SITE DESIGN IN DESTINATION SITE (Set the version)
# ==================================================================================
#Get-Content $siteScriptXML Set-SPOSiteScript -Identity "3747dd8c-f161-4340-be75-d6e5b16bc5de" -
#Set-SPOSiteDesign -Identity 'a54388af-063e-4662-b340-e2500ee74902' -SiteScripts "3747dd8c-f161-4340-be75-d6e5b16bc5de" -Version 2

# ==================================================================================
# GET EXISTING SITE DESIGN ID
# ==================================================================================
Get-SPOSiteDesign
Get-SPOSiteScript

# ==================================================================================
# REMOVE EXISTING SITE DESIGN
# ==================================================================================
#Remove-SPOSiteDesign -Identity 'a54388af-063e-4662-b340-e2500ee74902'
