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

	<div class="page-header">
		<h1>Rohit Blogs</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  		</p>
                      <p>${summary(post.body)}</p>
  		        <a class="btn btn-success" href="${post.uri}">Read More</a>
                </#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
