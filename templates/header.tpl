<!--
	Added/changed:
	Removed:
	  - Mobile nav and chats menus: partials/slideout-menu.tpl, partials/chats-menu.tpl
-->
<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<!--
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client<!-- IF bootswatchSkin -->-{bootswatchSkin}<!-- END -->.css?{config.cache-buster}" />
	-->
	<link rel="stylesheet" type="text/css" href="{relative_path}/dist/app.css" />
	{{{if bootswatchSkin}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/dist/vendors~css/{bootswatchSkin}-bootstrap-css.css" />
	{{{end}}}

	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-<!-- IF bootswatchSkin -->{bootswatchSkin}<!-- ELSE -->noskin<!-- END --> mt-3" style="padding-top: 56px;"><!-- fix this to maybe auto-detect height of navbar? -->
	<nav class="navbar navbar-expand-sm fixed-top navbar-light bg-light" id="header-menu" component="navbar">
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
	</nav>
	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
