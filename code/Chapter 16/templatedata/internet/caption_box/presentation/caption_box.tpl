
<iw_perl>
  my $preview = 0;
  my $ofile = iwpt_get_ofile_name();
  if ($ofile =~ /zz_/) { $preview=1;  }
</iw_perl>   

<iw_if expr='$preview eq "1"'>
  <iw_then>
<style>
.preview {
	background: #E6E9F0;
	border-right:1px solid #ccc;
	border-left:1px solid #ccc;
	font:normal 11px arial;
	color:#666;
	margin: 0;
	padding:4px;
	width: 170px;
        text-align:right;

}
h4 {
	background: #96A5C6;
	border:1px solid #ccc;
	color: #fff;
	font:bold 13px arial;
	margin: 0;
	padding:4px;
	width: 165px;
	text-align:center;
}
.text_form_field {

	color: #666;
	font: normal 11px arial;
	margin:2px 0 2px 0;
	padding:0;
        width:90px;
        height:18px;

}

</style>
<div id='contentContainer'>
<div class="preview"><!-- ******* 3.SIDEBAR SECTION  - RIGHT ********************************************************* -->
  </iw_then>
</iw_if>


  <h4><iw_value name='dcr.caption_box.header.text'/>&nbsp;
  <iw_if expr='{iw_value name="dcr.caption_box.header.icon"/} ne ""'>
    <img src='{iw_value name="dcr.caption_box.header.icon"/}' width="10" height="11" >
  </iw_if>
  </h4>

  <iw_iterate list='dcr.caption_box.body' var='body'>
    <iw_iterate list='body.*' var="body_element">
    <iw_ifcase name='body_element'>
      <iw_case type="select_form">
        <div class="links"  style="text-align:left">
          <iw_value name='body_element.description'/>
          <iw_if expr='{iw_value name="body_element.text_align"/} eq "top"'><iw_then><br/></iw_then></iw_if>
          <select name="{iw_value name='body_element.name'/}">
            <iw_iterate list='body_element.options' var='options'>
              <option value="{iw_value name='options.value'/}"><iw_value name='options.label'/></option>
            </iw_iterate>          
          </select>&nbsp;<img src="/images/button/goSmall.gif" width="23" height="16" />
        </div>
      </iw_case>

      <iw_case type="text_form">

        <iw_if expr='{iw_value name="body_element.text_align"/} eq "top"'><iw_then><div style="text-align:left;margin-left:8px;"></iw_then><iw_else><div style="width:100%;text-align:right;margin-left:4px;"></iw_else></iw_if>
        <iw_value name='body_element.description'/>
        <iw_if expr='{iw_value name="body_element.text_align"/} eq "top"'><iw_then><br/></iw_then></iw_if>
        <iw_if expr='{iw_value name="body_element.text_align"/} eq "top"'>
          <iw_then>
            <input name="{iw_value name='body_element.name'/}" id="{iw_value name='body_element.name'/}" type="text" size="22" />
          </iw_then>
          <iw_else>
            <input name="{iw_value name='body_element.name'/}" id="{iw_value name='body_element.name'/}" type="text" size="14" />
          </iw_else>
        </iw_if>
        </div>
      </iw_case>

      <iw_case type="radio_form">
        <div style="text-align:center">
        <iw_iterate list='body_element.options' var='options'>
          <input value="{iw_value name='options.value'/}" name="{iw_value name='body_element.name'/}" id="{iw_value name='options.value'/}" type="radio" {iw_value name='options.checked'/}> {iw_value name='options.label'/}
        </iw_iterate>
        </div>
      </iw_case>

      <iw_case type="button_form">
        <div style="margin-top:2px;text-align:right"><img src="/images/button/got.gif"/></div>
      </iw_case>
    </iw_ifcase>
    </iw_iterate>
  </iw_iterate>


<iw_if expr='$preview eq "1"'>
  <iw_then>
    </div>
  </iw_then>
</iw_if>
