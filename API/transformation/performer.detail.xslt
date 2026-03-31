<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

    <xsl:template match="/festivalData/performers/performer[@id='PER-001']">
        {
        "id": "<xsl:value-of select='@id'/>",
        "name": "<xsl:value-of select='name'/>",
        "country": "<xsl:value-of select='country'/>",
        "bio": "<xsl:value-of select='bio'/>"
        }
    </xsl:template>

    <xsl:template match="text()"/>
</xsl:stylesheet>