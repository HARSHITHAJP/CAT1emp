<xsl:stylesheet version = "1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

    <html>
        <body bgcolor="lightyellow">
            <center>
                <h2>Employee Management System</h2>

                <table border="2">
                    <tr bgcolor="orange">
                        <th>Emp id</th>
                        <th>Employee name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                        
                    </tr>
                    <xsl:for-each select="Company/Employee">
                        <tr>
                        <td><xsl:value-of select="Emp_id" /></td>
                        <td><xsl:value-of select="Emp_name" /></td>
                        <td><xsl:value-of select="Emp_age" /></td>
                        <td><xsl:value-of select="Emp_salary" /></td>
                        <td><xsl:value-of select="Emp_emailid" /></td>
                        <td><xsl:value-of select="Emp_phonenum" /></td>
                        <td><xsl:value-of select="Emp_designation" /></td>

                            <xsl:if test="Emp_age &gt;50">
                                <td>Associate Project manager</td>
                            </xsl:if>

                            <xsl:if test="Emp_age &gt;40 and Emp_age &lt; 50">
                                <td>Team lead</td>
                            </xsl:if>

                            <xsl:if test="Emp_age &lt;40">
                                <td>Developer</td>
                            </xsl:if>

                            
                        </tr>
                    </xsl:for-each>

                </table>
            </center>
        </body>
    </html>

</xsl:template>
</xsl:stylesheet>
