<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

    <xsl:template match="/festivalData/venues/venue[@id='VEN-001']">
        {
        "id": "<xsl:value-of select='@id'/>",
        "name": "<xsl:value-of select='name'/>",
        "type": "<xsl:value-of select='type'/>",
        "capacity": <xsl:value-of select='capacity'/>,
        "description": "<xsl:value-of select='description'/>",
        "address": {
        "street": "<xsl:value-of select='address/street'/>",
        "city": "<xsl:value-of select='address/city'/>"
        }
        }
    </xsl:template>

    <xsl:template match="text()"/>
</xsl:stylesheet>