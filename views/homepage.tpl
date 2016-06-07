<ul class="category-chooser">
	<li><a class="at" href="javascript:void(0)" data-id="all">All</a></li>
	{{each portfolio_category as cat sort by cat.sort asc}}
	<li>/<a href="#{{cat.path_part}}" data-id="{{cat.zid}}">{{cat.name}}</a></li>
	{{end-each}}
</ul>

<div class="portfolio-wrap">
	<div class="z-row">
		{{each portfolio_item as port sort by port.zid desc}}
		<a class="portfolio-item col-1/4" data-category="{{port.parent_zid}}" href="{{port.getUrl()}}" title="{{port.name}}">
			<img src="{{port.main_image.getImage(220,240,crop)}}" alt="{{port.name}} Image" />
			<h6 class="name">{{port.name}}</h6>
		</a>
		{{if {index} % 4 == 0}}
	</div>
	<div class="z-row">
		{{end-if}}
		
		{{end-each}}
		<div class="clear"></div>
	</div>
</div>