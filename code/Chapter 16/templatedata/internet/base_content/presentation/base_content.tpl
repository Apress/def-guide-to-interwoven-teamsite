<iw_perl>
  require "c:\\perlcode\\setNavAtt.ipl";

  my $preview = 0;
  my $ofile = iwpt_get_ofile_name();
  if ($ofile =~ /zz_/) { 
    $preview=1;
  } else {
    writeNavAttributes(iwpt_get_ofile_name());
  }
  my $header = iwpt_dcr_value("dcr.base_content.header_location");
  my $footer = iwpt_dcr_value("dcr.base_content.footer_location");
  $header =~ s|\.\./||g;
  $footer =~ s|\.\./||g;
  
</iw_perl>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title><iw_value name="dcr.title"/></title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<script language="JavaScript1.2" type="text/javascript" src="/includes/menuExpandContract.js"></script>
	<link href="/includes/cssNavigation.css" rel="stylesheet" type="text/css" />
	<link href="/includes/cssMain.css" rel="stylesheet" type="text/css" title="default" />
</head>


<body>
	<div id="bodyContainer">
		<div id="mastContainer">
		  <iw_if expr='{iw_value name="$preview"/} == 1'>
		    <iw_then>
		      <!--#include virtual="{iw_value name='$header'/}" -->		    
		    </iw_then>
		    <iw_else>
		      <!--#include virtual="{iw_value name='dcr.base_content.header_location'/}" -->
		    </iw_else>
		  </iw_if>
		</div><!-- end mastContainer -->
<!-- Navigation -->
		<div id="navMainList">
			<ul>
				<!--#include virtual="/cgi-bin/main_navigation.ipl" -->
			</ul>
		</div><!-- End of navMainList -->

		<div id="navSubList">
			<ul>
				<!--#include virtual="/cgi-bin/sub_navigation.ipl" -->
			</ul>
		</div><!-- End of navSubList -->		

		<div id="breadCrumbs">YOU ARE HERE: <script>document.write($urhere);</script></div><!-- End of breadCrumbs -->
				
		<div id="contentContainer"><!-- ******* CONTAINS - 1.SIDEBAR(left), 2.CONTENT(center), 3.SHORTCUTS(right), 4.backToTop ******** -->
			<div id="navSideBarLinks"><!-- **** 1.SIDEBAR SECTION - LEFT ************************************************************** -->
				<ul id="nav">
				
				<iw_if expr='{iw_value name="dcr.base_content.override_navigation"/} eq "override"'>
				  <iw_then>
				    <iw_iterate list='dcr.base_content.navigation.nav_link' var="nav" iteration='count'>
				      <li id="menu{iw_value name='count'/}"><a href="{iw_value name='nav.url'/}" onClick="" class="bulletArrow"><iw_value name="nav.text"/></a></li>
				    </iw_iterate>
				  </iw_then>
				  <iw_else>
				    <!--#include virtual="/cgi-bin/leftnav.ipl" -->
				  </iw_else>
				</iw_if>
				
				
				
				</ul>
				<img src="/images/basic_layout/navLeftBottom.gif" width="160" height="21" alt="Navigation Ends" />
			</div><!-- End navSideBarLinks -->						
<!-- Navigation -->			 
			<div id="content"><!-- ************ 2.CONTENT SECTION - CENTER ********************************************************** --> 
                          <iw_iterate list='dcr.base_content.body' var='body'>
                            <iw_iterate list='body.*' var="body_element">
                              <iw_ifcase name='body_element'>
                                <iw_case type="large_ad_graphic">
				  <a href="{iw_value name='body_element.url'/}"><img src="{iw_value name='body_element.large_ad_graphic'/}"/></a>
				</iw_case>
				<iw_case type="dual_image">
				  <div class="callOut">
				    <a href="{iw_value name='body_element.left_url'/}"><img src="{iw_value name='body_element.left_graphic'/}"/></a>
				    <a href="{iw_value name='body_element.right_url'/}"><img src="{iw_value name='body_element.right_graphic'/}"/></a>
				  </div>
				</iw_case>
				<iw_case type="intro">
				  <H1><iw_value name='body_element.heading'/></H1>
				  <p><iw_value name='body_element.text'/></p>
				</iw_case>
				<iw_case type="normal">
				  <H2><iw_value name='body_element.heading'/></H2>
				  <p><iw_value name='body_element.text'/></p>				
				</iw_case>
                              </iw_ifcase>
                            </iw_iterate>
                          </iw_iterate>
			</div><!-- End content -->
											
			<div id="navShortcuts"><!-- ******* 3.SIDEBAR SECTION  - RIGHT ********************************************************* -->
			  <iw_iterate list="dcr.base_content.cboxes" var="cbox" iteration="cnt">
			    <iw_if expr='{iw_value name="cbox.color"/} eq "one"'>
			      <iw_then>
			        <style>
			          #contentContainer #navShortcuts #cbox_{iw_value name='cbox.color'/}{iw_value name='cnt'/} h4 {
                                    background: #96A5C6;
                                    border:1px solid #ccc;
                                    color: #fff;
                                    font:bold 13px arial;
                                    margin: 0;
                                    padding:4px;
                                    width: 152px;
                                    text-align:center;
			          }
			        </style>
			      </iw_then>
			      <iw_else>
			        <style>
			          #contentContainer #navShortcuts #cbox_{iw_value name='cbox.color'/}{iw_value name='cnt'/} h4 {
                                    background: #9CCE6B;
                                    border:1px solid #ccc;
                                    color: #fff;
                                    font:bold 13px arial;
                                    margin: 0;
                                    padding:4px;
                                    width: 152px;
                                    text-align:center;
			          }
			        </style>
			      </iw_else>
			    </iw_if>  
			    
			    <div id="cbox_{iw_value name='cbox.color'/}{iw_value name='cnt'/}" class="cbox_{iw_value name='cbox.color'/}">
			      <iw_perl>
			        my $cboxurl = iwpt_dcr_value("dcr.base_content.cboxes[$cnt].location");
			        $cboxurl =~ s|\.\./||g;
			      </iw_perl>
			      
			      <iw_if expr='{iw_value name="$preview"/} == 1'>
			        <iw_then>
			          <!--#include virtual="{iw_value name='$cboxurl'/}" -->
			        </iw_then>
			        <iw_else>
			          <!--#include virtual="{iw_value name='cbox.location'/}" -->
			        </iw_else>
			      </iw_if>
			        
			    </div>
                          </iw_iterate>
			<iw_if expr='{iw_value name="dcr.base_content.cboxes[0].color"/} ne ""'>
			  <iw_then>
			    <img src="/images/basic_layout/navRightBottom.gif" width="164" height="20" alt="Navigation Ends" />
			  </iw_then>
			</iw_if>
			</div><!-- end navShortcuts -->
			
			<div id="backToTop"><script>if ($urhere != "Home") { document.write('<a href="#top">[ back to top ]</a>');}</script></div><!-- end backToTop -->
		</div><!-- end contentContainer -->	
			
                
		  <iw_if expr='{iw_value name="$preview"/} == 1'>
		    <iw_then>
		      <!--#include virtual="{iw_value name='$footer'/}" -->		    
		    </iw_then>
		    <iw_else>
		      <!--#include virtual="{iw_value name='dcr.base_content.footer_location'/}" -->
		    </iw_else>
		  </iw_if>