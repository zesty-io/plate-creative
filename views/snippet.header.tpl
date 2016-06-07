<div class="header-container">
	<div class="header structure z-container padded">
		<div class="z-row">
			{{include garnish-grey-social-links}}
			<div class="col-2/5">
				<a class="logo" href="/" title="{{clippings.site_name}}" itemprop="url">
					<img src="{{clippings.logo.getImage()}}" alt="{{clippings.site_name}}" itemprop="image" />
				</a>
			</div>
			<div class="col-3/5">
				<a href="javascript:void(0)" id="toggle-nav">
					<span class="one"></span>
					<span class="two"></span>
					<span class="three"></span>					
				</a>
				<div class="navigation">
					{{navigation}}
				</div>
			</div>
		</div>		
		<div class="clear"></div>
	</div>
</div>