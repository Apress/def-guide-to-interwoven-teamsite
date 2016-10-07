
	<link href="includes/cssMain.css" rel="stylesheet" type="text/css" title="default" />

    <div id="footerContainer">
      <div id="footerCopyright"><iw_value name='dcr.footer.copyright'/></div>
        <div id="footerPrivacy">
          <iw_iterate list='dcr.footer.quick_links' var='qlinks' iteration="count">              
            <iw_if expr='{iw_value name="count"/} ne "0"'>
              <iw_then> | </iw_then>
            </iw_if>
            <a href="<iw_value name='qlinks.link_href'/>"><iw_value name='qlinks.link_text'/></a>
          </iw_iterate>
        </div>
      </div><!-- end Footer -->
    </div><!-- end bodyContainer -->
  </body>
</html>