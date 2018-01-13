<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">

    <!-- Requirement -->

    <rule context="ccv:RequirementGroup[/espd:ESPDResponse][@pi='GROUP_FULFILLED.ON_TRUE'][../parent::node()[@pi='GROUP_FULFILLED.ON_TRUE']/../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator = 'false'][normalize-space(../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator) = 'false']/ccv:Requirement">
        <assert id="EHF-ESPD-R114"
                test="not(ccv:Response)"
                flag="fatal">Response MUST NOT be provided when response is not expected.</assert>
    </rule>

    <rule context="ccv:RequirementGroup[/espd:ESPDResponse][@pi='GROUP_FULFILLED.ON_TRUE'][normalize-space(../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator) = 'false']/ccv:Requirement">
        <assert id="EHF-ESPD-R110"
                test="not(ccv:Response)"
                flag="fatal">Response MUST NOT be provided when response is not expected.</assert>
    </rule>

    <rule context="ccv:RequirementGroup[/espd:ESPDResponse][@pi='GROUP_FULFILLED.ON_TRUE'][normalize-space(../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator) = 'false']/ccv:RequirementGroup/ccv:Requirement">
        <assert id="EHF-ESPD-R112"
                test="not(ccv:Response)"
                flag="fatal">Response MUST NOT be provided when response is not expected.</assert>
    </rule>

    <rule context="ccv:RequirementGroup[/espd:ESPDResponse][@pi='GROUP_FULFILLED.ON_FALSE'][normalize-space(../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator) = 'true']/ccv:Requirement">
        <assert id="EHF-ESPD-R111"
                test="not(ccv:Response)"
                flag="fatal">Response MUST NOT be provided when response is not expected.</assert>
    </rule>

    <rule context="ccv:RequirementGroup[/espd:ESPDResponse][@pi='GROUP_FULFILLED.ON_FALSE'][normalize-space(../ccv:Requirement[1]/ccv:Response/ccv-cbc:Indicator) = 'true']/ccv:RequirementGroup/ccv:Requirement">
        <assert id="EHF-ESPD-R113"
                test="not(ccv:Response)"
                flag="fatal">Response MUST NOT be provided when response is not expected.</assert>
    </rule>

    <rule context="ccv:Requirement">
        <assert id="EHF-ESPD-R100"
                test="(/espd-req:ESPDRequest and not(ccv:Response)) or (/espd:ESPDResponse and ccv:Response)"
                flag="fatal">Response MUST be provided in ESPD Response and MUST NOT be provided in ESPD Request.</assert>
        <assert id="EHF-ESPD-R101"
                test="/espd:ESPDRequest or not(ccv:Response) or count(ccv:Response/*) - count(ccv:Response/cbc:ID) = 1"
                flag="fatal">Response MUST contain only the specified response type.</assert>
    </rule>

    <!-- Response -->

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'AMOUNT']/ccv:Response">
        <assert id="EHF-ESPD-R120"
                test="cbc:Amount"
                flag="fatal">Amount element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'CODE']/ccv:Response">
        <assert id="EHF-ESPD-R121"
                test="ccv-cbc:Code"
                flag="fatal">Code element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'CODE_COUNTRY']/ccv:Response">
        <assert id="EHF-ESPD-R122"
                test="ccv-cbc:Code"
                flag="fatal">Code element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'DATE']/ccv:Response">
        <assert id="EHF-ESPD-R123"
                test="cbc:Date"
                flag="fatal">Date element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'DESCRIPTION']/ccv:Response">
        <assert id="EHF-ESPD-R124"
                test="cbc:Description"
                flag="fatal">Description element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'EVIDENCE_URL']/ccv:Response">
        <assert id="EHF-ESPD-R125"
                test="cev-cac:Evidence"
                flag="fatal">Evidence element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'INDICATOR']/ccv:Response">
        <assert id="EHF-ESPD-R126"
                test="ccv-cbc:Indicator"
                flag="fatal">Indicator element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'PERCENTAGE']/ccv:Response">
        <assert id="EHF-ESPD-R127"
                test="cbc:Percent"
                flag="fatal">Percent element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'PERIOD']/ccv:Response">
        <assert id="EHF-ESPD-R128"
                test="cac:Period"
                flag="fatal">Period element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'QUANTITY_INTEGER']/ccv:Response">
        <assert id="EHF-ESPD-R129"
                test="cbc:Quantity"
                flag="fatal">Quantity element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'QUANTITY_YEAR']/ccv:Response">
        <assert id="EHF-ESPD-R130"
                test="cbc:Quantity[@unitCode = 'YEAR']"
                flag="fatal">Quantity element MUST be provided as response when specified.</assert>
    </rule>

    <rule context="ccv:Requirement[/espd:ESPDResponse][@responseDataType = 'QUANTITY']/ccv:Response">
        <assert id="EHF-ESPD-R131"
                test="cbc:Quantity"
                flag="fatal">Quantity element MUST be provided as response when specified.</assert>
    </rule>

    <!-- Additional Document Reference -->

    <rule context="cac:AdditionalDocumentReference[normalize-space(cbc:DocumentTypeCode) = 'TED_CN']">
        <assert id="EHF-ESPD-R210"
                test="/espd:ESPDResponse"
                flag="fatal">ESPD Request MUST NOT contain reference to TED.</assert>
        <assert id="EHF-ESPD-R211"
                test="not(cbc:IssueDate) and not(cbc:IssueTime)"
                flag="fatal">TED reference MUST NOT contain issue date and issue time.</assert>
        <assert id="EHF-ESPD-R212"
                test="cbc:ID"
                flag="fatal">TED reference MUST contain an identifier.</assert>
        <assert id="EHF-ESPD-R213"
                test="matches(normalize-space(cbc:ID/text()), '^[0-9]{4}/S [0-9]{3}\-[0-9]{6}$')"
                flag="fatal">TED reference MUST match '[][][][]/S [][][]-[][][][][][]' (e.g. 2015/S 252-461137).</assert>
        <assert id="EHF-ESPD-R214"
                test="normalize-space(cbc:ID/text()) != '0000/S 000-000000'"
                flag="fatal">TED reference MUST not be a temporary value.</assert>
    </rule>

    <rule context="cac:AdditionalDocumentReference[normalize-space(cbc:DocumentTypeCode) = 'ESPD_REQUEST']">
        <assert id="EHF-ESPD-R220"
                test="/espd:ESPDResponse"
                flag="fatal">ESPD Request reference MUST NOT contain reference to another ESPD Requesy.</assert>
        <assert id="EHF-ESPD-R221"
                test="not(cac:Attachment/cbc:URI)"
                flag="fatal">NGOJ reference MUST NOT contain issue date, issue time and attachment.</assert>
        <assert id="EHF-ESPD-R222"
                test="cbc:IssueDate"
                flag="fatal">ESPD Request reference MUST contain an issue date.</assert>
    </rule>

    <rule context="cac:AdditionalDocumentReference[normalize-space(cbc:DocumentTypeCode) = 'NGOJ']">
        <assert id="EHF-ESPD-R231"
                test="not(cac:Attachment) and not(cbc:IssueDate) and not(cbc:IssueTime)"
                flag="fatal">NGOJ reference MUST NOT contain issue date, issue time and attachment.</assert>
        <!-- TODO Formatering av identifikator fra Doffin. -->
    </rule>

    <rule context="cac:AdditionalDocumentReference">
        <!-- Not allowed type -->
        <assert id="EHF-ESPD-R200"
                test="not(/espd-req:ESPDRequest)"
                flag="fatal">ESPD Request MUST contain only document reference 'NGOJ'.</assert>
        <assert id="EHF-ESPD-R201"
                test="not(/espd:ESPDResponse)"
                flag="fatal">ESPD Responst MUST contain only document references 'TED_CN', 'ESPD_REQUEST' and 'NGOJ'.</assert>
    </rule>

</pattern>