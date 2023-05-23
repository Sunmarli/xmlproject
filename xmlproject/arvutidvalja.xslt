<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		1.arvuti nimetus
		<xsl:value-of select ="arvutid/arvuti[1]/nimi"/>
		<br/>
		<strong>Kõik arvutid</strong>
		<ol>
			<xsl:for-each select ="arvutid/arvuti">
				<li>
					<xsl:value-of select="nimi"/>,
					<xsl:value-of select="hind"/>,
					<xsl:value-of select="firma"/>,
					<ul>
						<xsl:for-each select="lisad/monitor">
							<li_>
								<xsl:value-of select="nimetus"/>,
								<xsl:value-of select="hind"/>,
							</li_>
						</xsl:for-each>
						<xsl:for-each select="lisad/hiir">
							<li>
								<xsl:value-of select="nimetus"/>
							</li>
						</xsl:for-each>
					</ul>
				</li>
			</xsl:for-each>
		</ol>
		<br/>
		<strong>If tingimus: näidata kõik tooded  HP hiirtega. </strong>
		<strong>If tingimus: näidata kõik tooded  ku arvutihind suurem kui  300 eur. </strong>
		<br/>
		<table>
			<thead>
				<tr>
					<th>Nimetus</th>
					<th>Hind</th>
					<th>Firma</th>
					<th>Monitori nimetus</th>
					<th>Monitori hind</th>
					<th>Hiire nimetus</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="arvutid/arvuti">
					<xsl:sort select="lisad/hiir/nimetus"/>
					<xsl:sort select="hind"/>
					<xsl:if test="contains(lisad/hiir/nimetus, 'HP')">

							<tr>
							<td>
								<xsl:value-of select="nimi"/>
							</td>
							<td>
								<xsl:if test="arvuti/hind &gt; 300">
									<span style="color:red">
										<xsl:value-of select="hind"/>
									</span>
								</xsl:if>
							</td>
							<td>
								<xsl:value-of select="firma"/>
							</td>
							<td>
								<xsl:value-of select="lisad/monitor/nimetus"/>
							</td>
							<td>
								<xsl:value-of select="lisad/monitor/hind"/>
							</td>
							<td>
								<xsl:value-of select="lisad/hiir/nimetus"/>
					
							</td>
							</tr>
					</xsl:if>
				
				</xsl:for-each>
			</tbody>
		</table>
		

	</xsl:template>
</xsl:stylesheet>
