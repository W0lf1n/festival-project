<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

    <xsl:template match="/festivalData/festival">
        {
        "id": "<xsl:value-of select='@id'/>",
        "name": "<xsl:value-of select='identity/name'/>",
        "edition": "<xsl:value-of select='identity/edition'/>",
        "city": "<xsl:value-of select='identity/location/city'/>",
        "startDate": "<xsl:value-of select='dates/startDate'/>",
        "endDate": "<xsl:value-of select='dates/endDate'/>"
        }
    </xsl:template>

    <xsl:template match="text()"/>
</xsl:stylesheet>