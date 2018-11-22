<?xml version="1.0" encoding="UTF-8"?>
<!-- E-ARK ERMS draft Schematron rules version 0.1 -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
    <ns uri="http://www.loc.gov/mads/rdf/v1#" prefix="madsrdf"/>
    <ns uri="https://DILCIS.eu/XML/ERMS" prefix="erms"/>
    
    
    <!-- CO-OCCURRENCE CONSTRAINTS -->

    <pattern id="co-occurrence-constraints">
        <rule context="*[@AggregationType = 'Own aggregation definition']">
            <assert test="normalize-space(@OtherAggregationType)"> If the value of a <emph>AggregationType</emph> attribute is "Own aggregation definition', then the <emph>OtherAggregationType</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@DateType = 'Other']">
            <assert test="normalize-space(@OtherDateType)"> If the value of a <emph>DateType</emph> attribute is "Other', then the <emph>OtherDateType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@DirectionDefinition = 'Other']">
            <assert test="normalize-space(@OtherDirectionDefinition)"> If the value of a <emph>DirectionDefinition</emph> attribute is "Other', then the <emph>OtherDirectionDefinition</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@AddressLineType = 'Other']">
            <assert test="normalize-space(@OtherAddressLineType)"> If the value of a <emph>AddressLineType</emph> attribute is "Other', then the <emph>OtherAddressLineType</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@ContactLineType = 'Other']">
            <assert test="normalize-space(@OtherContactLineType)"> If the value of a <emph>ContactLineType</emph> attribute is "Other', then the <emph>OtherContactLineType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@AgentType = 'Other']">
            <assert test="normalize-space(@OtherAgentType)"> If the value of an <emph>AgentType</emph> attribute is "Other', then the <emph>OtherAgentType</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@DisposalDateType = 'Other date']">
            <assert test="normalize-space(@OtherDisposalDateType)"> If the value of attribute <emph>DisposalDateType</emph> is 'Other date', then the <emph>OtherDisposalDateType</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@RestrictionType = 'Other type']">
            <assert test="normalize-space(@OtherRestrictionType)"> If the value of attribute <emph>RestrictionType</emph> is 'Other type', then the <emph>OtherRestrictionType</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@RelationType = 'Own relation definition']">
            <assert test="normalize-space(@OtherRelationType)"> If the value of attribute <emph>RelationType</emph> is 'Own relation definition', then the <emph>OtherRelationType</emph> attribute should be used </assert>
        </rule>
    </pattern>

   
</schema>
