


    <div class="panel panel-success">
	<div class="panel-heading">
	    <h3 class="panel-title">Blog Archive</h3>
	</div>
	<div class="panel-body">
	    <#list published_posts as post>
		<#if (last_month)??>
		    <#if post.date?string("MMMM yyyy") != last_month>
				</ul>
				<h4>${post.date?string("MMMM yyyy")}</h4>
				<ul>
		    </#if>
		<#else>
		    <h4>${post.date?string("MMMM yyyy")}</h4>
		    <ul>
		</#if>
		
		<li>${post.date?string("dd")} - <a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
		<#assign last_month = post.date?string("MMMM yyyy")>
	    </#list>
		    </ul>
		    

	</div>
    </div>






	<!--<ul>-->
	
