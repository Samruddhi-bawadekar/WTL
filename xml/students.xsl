
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Results</title>
            </head>
            <body>
                <h2>Student Results</h2>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Marks</th>
                        <th>Result</th>
                    </tr>
                    <xsl:apply-templates select="students/student" />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="marks"/></td>
            <td>
                <xsl:choose>
                    <xsl:when test="marks &gt;= 50">
                        Pass
                    </xsl:when>
                    <xsl:otherwise>
                        Fail
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>