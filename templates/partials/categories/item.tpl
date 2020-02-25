<div class="col mb-4">
	<div component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="card">
		<img src="{../backgroundImage}" class="card-img-top" alt="{../name}">
		<meta itemprop="name" content="{../name}">
		<div class="card-body">
			<h5 class="card-title">{../name}</h5>
			<p class="card-text">{../descriptionParsed}</p>
			<a href="{config.relative_path}/category/{../slug}" itemprop="url" class="btn stretched-link" style="background-color: {../bgColor}; color: {../color};"><i class="fa {../icon}"></i> Visit</a>
		</div>
		<div class="card-footer">
			{{{ if ../teaser }}}
			<a class="permalink" href="{../teaser.url}">
				<i class="text-muted fa fa-clock-o"></i>
				<small class="text-muted timeago" title="{../teaser.timestampISO}"></small>
			</a>
			{{{ else }}}
			<small class="text-muted">[[category:no_new_posts]]</small>
			{{{ end }}}
		</div>
	</div>
</div>