<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-common-products">
    	<xsl:param name="title">导游讲解</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-common-products" ox-mod="ctrip-common-products">
            <h3>
                <xsl:value-of select="$title"/>
            </h3>
            <ul>
            	<xsl:for-each select="data/product-list/i">
	            	<li>
	            		<a href="{href}">
		            		<span class="right-button">
		            			<span class="price">
		            				<em><xsl:value-of select="price"/></em>
		            			</span>
		            			<br/>
	            				<b class="bt-buy">
	            					立即预订
	            				</b>
		            		</span>
		            		<h4 class="title"><xsl:value-of select="title"/></h4>
		            		<p class="tags">
		            			<xsl:copy-of select="tags/i"/>
		            			<span class="sold">
		            				月销:<xsl:value-of select="sold"/>
		            			</span>
		            		</p>
		            		
		            	</a>
	            	</li>
	            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
