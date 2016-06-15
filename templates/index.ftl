<#include "header.ftl">
	
	<#include "menu.ftl">


<#function summary content marker=(config.summary_marker)!"<!--more-->">
    <#assign idx = content?index_of(marker) />
    <#if idx gt 0>
        <#return content?substring(0,idx)>
    <#else>
        <#return content>
    </#if>
</#function>
     
        <!--Conatiner starts-->
        <div class = "container">
	    <div class="page-header">
		<h1>Rohit Blogs</h1>
		<hr></hr>
	    </div>

	    <div class="row">
	  <div class="col-md-8"><!--Blog enteries column-->
	  	  <#list posts as post>
	  	  	 <#if (post.status == "published")>
		 	 <a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
	 		 <p>${post.date?string("dd MMMM yyyy")}</p>
			 </p>
	                 <p>${summary(post.body)}</p>
		         <a class="btn btn-success" href="${post.uri}">Read More</a>
	         </#if>
          </#list>
	  </div><!--Blog column ends-->
	   <div class="col-md-4">
           <#include "archive.ftl">
               <div class="panel panel-info">
		   <div class="panel-heading">
		       <h3 class="panel-title">Twitter</h3>
		   </div>
		   <div class="panel-body">
		       <a class="twitter-timeline" href="https://twitter.com/rohit_elan" data-widget-id="577392721993818113">Tweets by @rohit_elan</a>
		       <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		   </div>
	       </div>

	       <!-- Add twitter -->
	     

	   </div> <!-- Row ends-->  
           <hr />
	  
	 </div>
	
	<!--  <p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>-->
	 <#include "footer.ftl">	  
	</div><!--Container ends-->

