<iw_perl>
  my $preview = 0;
  my $ofile = iwpt_get_ofile_name();
  if ($ofile =~ /zz_/) { $preview=1;  }
</iw_perl>   

<iw_if expr='$preview eq "1"'>
<iw_then>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>FiCorp Banking | Home </title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<script language="JavaScript1.2" type="text/javascript" src="includes/menuExpandContract.js"></script>
	<link href="includes/cssNavigation.css" rel="stylesheet" type="text/css" />
	<link href="includes/cssMain.css" rel="stylesheet" type="text/css" title="default" />
</head>

<body>
	<div id="bodyContainer">
		<div id="mastContainer">

</iw_then>
</iw_if>
<div id="siteLinksContainer">
<iw_iterate list='dcr.header.quick_links' var='qlinks' iteration="count">
  <iw_if expr='{iw_value name="count"/} ne "0"'>
    <iw_then> | </iw_then>
  </iw_if>
  <a href="<iw_value name='qlinks.link_href'/>"><iw_value name='qlinks.link_text'/></a>
  <iw_if expr='{iw_value name="qlinks.image"/} ne ""'>
    <iw_then>
      <img src='{iw_value name="qlinks.image"/}' width="16" height="15" />
    </iw_then>
  </iw_if>
</iw_iterate>


<a name="backtotop" id="backtotop"></a>
</div>
<!-- end siteLinksContainer -->
			<div id="searchContainer"><form id="frmSearch" name="frmSearch" method="post" action="#"><iw_value name='dcr.header.quick_search.text'/> <input name="txtSearch" type="text" size="18" /> <a href="search.htm"><img src="{iw_value name='dcr.header.quick_search.image'/}" width="34" height="21" alt="Search" /></a></form></div>
			<div id="logoContainer"><a href="default.htm"><img src="<iw_value name='dcr.header.logo'/>" width="774" height="86" alt="FiCorp Banking" /></a></div><!-- end logoContainer -->
<iw_if expr='$preview eq "1"'>
<iw_then>
		</div><!-- end mastContainer -->
</iw_then>
</iw_if>