<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <h1> <xsl:value-of select="trees/@name"/></h1>
        <h2>Всего ёлок:
            <xsl:value-of select="count(//tree)"/>
        </h2>
        <h2>Общая стоимость:
            <xsl:value-of select="sum(//tree/@price)"/>
        </h2>

        <table border="1">
            <tr><td>Price</td><td>City</td><td>Height</td></tr>
            <xsl:apply-templates select="//tree"></xsl:apply-templates>
        </table>
    </xsl:template>

    <xsl:template match="tree">
        <tr>
            <td><xsl:value-of select="@price"></xsl:value-of></td>
            <td><xsl:value-of select="@city"></xsl:value-of></td>
            <td><xsl:value-of select="@height"></xsl:value-of></td>
        </tr>
    </xsl:template>


</xsl:stylesheet>