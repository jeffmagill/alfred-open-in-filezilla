<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <xsl:param name="query"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="text()"/>
    <xsl:template name="long-path">
        <xsl:param name="node"/>
        <xsl:for-each select="$node/ancestor-or-self::*">
            <xsl:if test="not(normalize-space(text()) = '')">
                <xsl:value-of select="concat('/',normalize-space(text()))"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="/">
        <items>
        <xsl:apply-templates select="node()"/>
        </items>
    </xsl:template> 
          
  

    <xsl:template match="Server">
        <xsl:variable name="path">
            <xsl:call-template name="long-path"> 
                <xsl:with-param name="node" select="Name"/> 
            </xsl:call-template>
        </xsl:variable>

        <xsl:if test="contains($path,$query)">
        
        <xsl:variable name="name" select="Name"/>
         
        <item uid="{$path}" arg="0{$path}" valid='YES' autocomplete='{$path}'>
            <title><xsl:value-of select="$name"/></title>
            <subtitle>Open '<xsl:value-of select="$path"/>' in Filezilla</subtitle>
            <icon type='fileicon'>/Applications/Filezilla.app</icon>
        </item>
        </xsl:if>
        
    </xsl:template>
    
</xsl:stylesheet>