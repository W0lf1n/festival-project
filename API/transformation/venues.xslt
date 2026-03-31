<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

    <xsl:template match="/festivalData">
        [
        <xsl:for-each select="venues/venue">
            {
            "id": "<xsl:value-of select='@id'/>",
            "name": "<xsl:value-of select='name'/>",
            "type": "<xsl:value-of select='type'/>",
            "capacity": <xsl:value-of select='capacity'/>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>