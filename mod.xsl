<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-common-products">
    	
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-common-products" ox-mod="ctrip-common-products">
           
            <ul>
            	<xsl:for-each select="data/ecom-products/i">
	            	<li>
	            		<a href="{href}">
		            		<span class="right-button">
		            			<span class="price">
		            				<em><xsl:value-of select="price"/></em>
		            				<xsl:if test="orig_price">
			            				<del><xsl:value-of select="orig_price"/></del>
			            			</xsl:if>
		            			</span>
		            			<br/>
	            				<b class="bt-buy">
	            					立即购买
	            				</b>
		            		</span>
		            		<h4 class="title"><xsl:value-of select="title"/></h4>
		            		<p class="tags">
		            			<xsl:for-each select="parameter/i">
		            				<i><xsl:value-of select="value"/></i>
		            			</xsl:for-each>
		            			
		            			<xsl:if test="sold &gt; 0">
		            			<span class="sold">
		            				月销:<xsl:value-of select="sold"/>
		            			</span>
		            			</xsl:if>
		            		</p>
		            		
		            	</a>
	            	</li>
	            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
