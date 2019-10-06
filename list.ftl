<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.brand.list")} - Powered By SHOP++</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/list.js"></script>
<script	src="${base}/resources/admin/js/colResizable-1.6.js"></script>
<script type="text/javascript">
$().ready(function() {
	[@flash_message /]
});
</script>
</head>
<body>
	<div class="path">
		<a href="${base}/admin/common/index.jhtml">${message("admin.path.index")}</a> &raquo; ${message("admin.brand.list")} <span>(${message("admin.page.total", page.total)})</span>
	</div>
	<!--<div class="pathh">
		 &nbsp; 品牌列表
	</div>-->
	<form id="listForm" action="list.jhtml" method="get">
		<div class="bar">
			<div class="buttonWrap">
				<a href="javascript:;" id="hideShow" class="iconButton">收起 <img src="${base}/resources/admin/images/ico-aup.png"></a>
				<a href="add.jhtml" class="iconButton">
					<span class="addIcon">&nbsp;</span>${message("admin.common.add")}
				</a>
				<!--<a href="javascript:;" id="deleteButton" class="iconButton disabled">
					<span class="deleteIcon">&nbsp;</span>${message("admin.common.delete")}
				</a>-->
				
			
			</div>

		<div id="searchDiv">
		<div id="search-content" >
		    		<dl>
		    			<dt width="80px">名称：</dt>
		    			<dd>
		    				<input type="text" class="text" id="name" name="name" value ="${name}"/>
		    			</dd></dl>
		    		<dl>
						<dt width="80px">网址：</dt>
		    			<dd>
		    				<input type="text" class="text" id="url" name="url" value ="${url}"/>
		    			</dd></dl>
		    			[#--
		    			<td>分类：</td>
		    			<td>
		    				<div class="search">							
							<input name="areaWarehouseItems[0].warehouseId" class="text warehouseId" type="hidden">
							<input name="areaWarehouseItems[0].warehouseName" class="text warehouseName" maxlength="200" type="text">
							<button type="button" onclick="selectWarehouse(this)">&nbsp;</button>
						</div>
		    			</td>
		    			--]
		    		
	    	</div>
	    	<div class="search-btn"><a href="javascript:;" id="searchBtn" class="iconButton">搜索</a></div>
		</div>
		</div>
		<div id="table-data-div">
		<table id="listTable" class="list" border="2" is_drag="true">
			<tr>
				<th class="check">
					<input type="checkbox" id="selectAll" />
				</th>
				<th>
					<a href="javascript:;" class="sort" name="name">${message("Brand.name")}</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="url">${message("Brand.url")}</a>
				</th>
				<th>
					<a href="javascript:;" class="sort" name="order">${message("admin.common.order")}</a>
				</th>
				<th>
					<span>${message("admin.common.handle")}</span>
				</th>
			</tr>
			[#list page.content as brand]
				<tr>
					<td>
						<input type="checkbox" name="ids" value="${brand.id}" />
					</td>
					<td>
						<div>${brand.name}</div>
					</td>
					<td>
						<div>
						[#if brand.url??]
							<a href="${brand.url}" target="_blank">${brand.url}</a>
						[#else]
							-
						[/#if]
						</div>
					</td>
					<td>
						<div>${brand.order}</div>
					</td>
					<td>
						<div><a href="edit.jhtml?id=${brand.id}">[${message("admin.common.edit")}]</a>
						<!--<a href="${base}${brand.path}" target="_blank">[${message("admin.common.view")}]</a>-->
						</div>
					</td>
				</tr>
			[/#list]
		</table>
		[@pagination pageNumber = page.pageNumber totalPages = page.totalPages]
			[#include "/admin/include/pagination.ftl"]
		[/@pagination]
		</div>
	</form>
</body>
</html>