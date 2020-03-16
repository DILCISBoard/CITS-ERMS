<?xml version="1.0" encoding="UTF-8"?>
<!-- E-ARK ERMS Schematron rules version 1.0 -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
    <ns uri="http://www.loc.gov/mads/rdf/v1#" prefix="madsrdf"/>
    <ns uri="https://DILCIS.eu/XML/ERMS" prefix="erms"/>
    
    
    <!-- CO-OCCURRENCE CONSTRAINTS -->

    <pattern id="co-occurrence-constraints">
        <rule context="*[@aggregationtype = 'Own aggregation definition']">
            <assert test="normalize-space(@otheraggregationtype)"> If the value of a <emph>aggregationtype</emph> attribute is "Own aggregation definition', then the <emph>otheraggregationtype</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@dateType = 'Other']">
            <assert test="normalize-space(@otherdatetype)"> If the value of a <emph>datetype</emph> attribute is "Other', then the <emph>otherdatetype</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@directiondefinition = 'Other']">
            <assert test="normalize-space(@otherdirectiondefinition)"> If the value of a <emph>directiondefinition</emph> attribute is "Other', then the <emph>otherdirectiondefinition</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@addresslinetype = 'Other']">
            <assert test="normalize-space(@otheraddresslinetype)"> If the value of a <emph>addresslinetype</emph> attribute is "Other', then the <emph>otheraddresslinetype</emph> attribute must be used.</assert>
        </rule>
        <rule context="*[@contactlinetype = 'Other']">
            <assert test="normalize-space(@othercontactlinetype)"> If the value of a <emph>contactlinetype</emph> attribute is "Other', then the <emph>othercontactlinetype</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@agenttype = 'Other']">
            <assert test="normalize-space(@otheragenttype)"> If the value of an <emph>agenttype</emph> attribute is "Other', then the <emph>otheragenttype</emph> attribute must be used. </assert>
        </rule>
        <rule context="*[@disposaldatetype = 'Other date']">
            <assert test="normalize-space(@otherdisposaldatetype)"> If the value of attribute <emph>disposaldatetype</emph> is 'Other date', then the <emph>otherdisposaldatetype</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@restrictiontype = 'Other type']">
            <assert test="normalize-space(@otherrestrictiontype)"> If the value of attribute <emph>restrictiontype</emph> is 'Other type', then the <emph>otherrestrictiontype</emph> attribute should be used </assert>
        </rule>
        <rule context="*[@relationtype = 'Own relation definition']">
            <assert test="normalize-space(@oherrelationtype)"> If the value of attribute <emph>relationtype</emph> is 'Own relation definition', then the <emph>otherrelationtype</emph> attribute should be used </assert>
        </rule>
    </pattern>

   
</schema>
