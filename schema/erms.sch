<?xml version="1.0" encoding="UTF-8"?>
<!-- E-ARK ERMS Schematron rules version 2.1.2 -->
<!-- E-ARK ERMS Schematron rules version 2.1 -->
<!-- E-ARK ERMS Schematron rules version 1.0 -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
    <ns uri="http://www.loc.gov/mads/rdf/v1#" prefix="madsrdf"/>
    <ns uri="https://DILCIS.eu/XML/ERMS" prefix="erms"/>
    
    
    <!-- CO-OCCURRENCE CONSTRAINTS -->

    <pattern id="co-occurrence-constraints">
        <rule context="*[@aggregationType = 'own_aggregation_definition']">
            <assert test="normalize-space(@otherAggregationType)"> If the value of a <emph>aggregationType</emph> attribute is "own_aggregation_definition', then the <emph>otherAggregationType</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@dateType = 'Other']">
            <assert test="normalize-space(@otherDateType)"> If the value of a <emph>dateType</emph> attribute is "other', then the <emph>otherDateType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@directionDefinition = 'other']">
            <assert test="normalize-space(@otherDirectionDefinition)"> If the value of a <emph>directionDefinition</emph> attribute is "other', then the <emph>otherDirectionDefinition</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@addressLineType = 'other']">
            <assert test="normalize-space(@otherAddressLineType)"> If the value of a <emph>addressLineType</emph> attribute is "other', then the <emph>otherAddressLineType</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@contactLineType = 'other']">
            <assert test="normalize-space(@otherContactLineType)"> If the value of a <emph>contactLineType</emph> attribute is "other', then the <emph>otherContactLineType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@agentType = 'other']">
            <assert test="normalize-space(@otherAgentType)"> If the value of an <emph>agentType</emph> attribute is "other', then the <emph>otherAgentType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@disposalDateType = 'other_date']">
            <assert test="normalize-space(@otherDisposalDateType)"> If the value of attribute <emph>disposalDateType</emph> is 'other_date', then the <emph>otherDisposalDateType</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@restrictionType = 'other_type']">
            <assert test="normalize-space(@otherRestrictionType)"> If the value of attribute <emph>restrictionType</emph> is 'other_type', then the <emph>otherRestrictionType</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@relationType = 'own_relation_definition']">
            <assert test="normalize-space(@otherRelationType)"> If the value of attribute <emph>relationType</emph> is 'own_relation_definition', then the <emph>otherRelationType</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@classificationSchemaStatus = 'other']">
            <assert test="normalize-space(@otherclassificationSchemaStatus)"> If the value of the <emph>classificationSchemaStatus</emph> attribute is "other', then the <emph>otherClassificationSchemaStatus</emph> attribute must be used. </assert>
        </rule>
    </pattern>
    
   
</schema>
