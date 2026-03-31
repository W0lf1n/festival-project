<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

    <xsl:template match="/festivalData">
        [
        <xsl:for-each select="events/event">
            {
            "id": "<xsl:value-of select='@id'/>",
            "title": "<xsl:value-of select='title'/>",
            "category": "<xsl:value-of select='@category'/>",
            "venueId": "<xsl:value-of select='@venueId'/>",
            "start": "<xsl:value-of select='start'/>",
            "end": "<xsl:value-of select='end'/>"
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>