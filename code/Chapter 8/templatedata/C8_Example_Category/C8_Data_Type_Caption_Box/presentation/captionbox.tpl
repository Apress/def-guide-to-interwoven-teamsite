<iw_pt>
<style>
  .caption_box_table {
    width:200px;
    height:100px;
    border-style:solid;
    border-width:1;
    border-color:black;
    font-size:18pt;
  }
  .caption_box_header {
    background-color:#cecece;
    border-bottom-style:solif;
    border-botom-width:1px;
    text-align:center;
    font-size:18pt;
  } 
</style>

<table cellspacing="0" class="caption_box_table">
  <iw_iterate list='dcr.caption_box.header' var='c_head'>
  <tr>
      <iw_if expr='{iw_value name="c_head.header_backgroundcolor"/} ne "" '>
        <iw_then>
        <td class="caption_box_header">
          <div style="background-color:            
            {iw_value name='c_head.header_backgroundcolor' /} ">
            <iw_value name='c_head.label.text'/>
          </div>  
        </td>
        </iw_then>
        <iw_else>
          <td class="caption_box_header">
            <iw_value name='c_head.label.text'/>
           </td>
        </iw_else>
      </iw_if>
  </tr>
  </iw_iterate>
  <iw_iterate list='dcr.caption_box.body' var='c_body'>
  <tr>
    <td style="font-size:18pt;">
      <iw_ifcase name="length({iw_value name='c_body.body_text'/})">
         <iw_case expr="gt '0'">
           <!-- BEGIN: Body Text -->
           <iw_value name='c_body.body_text'/>
           <!-- End: Body Text --> 
         </iw_case>
         <iw_case>
           <!-- BEGIN: Body Links -->
           <ul>
             <iw_iterate list='c_body.body_link' var='link' >
               <li><a href="{iw_value name='link.body_link_href' /} ">
               <iw_value name='link.body_link_text' /></a></li>
             </iw_iterate>
           </ul>
           <!-- END: Body Links -->
         </iw_case>
       </iw_ifcase>

    </td>
  </tr>
  </iw_iterate>
</table>
</iw_pt>










