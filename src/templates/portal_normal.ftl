<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid-1280 row" id="wrapper">

	<aside class="col-md-3" id="userCard">
		<div class="panel">
			<#if page_group.isUser()>
				<div class="nameplate">
					<div class="nameplate-field">
						<div class="aspect-ratio-bg-cover user-icon user-icon-xl" ${main_menu_style}></div>
					</div>

					<div class="nameplate-content">
						<h3 class="nameplate-heading">${htmlUtil.escape(main_menu_user_name)}
							<small class="nameplate-subheading">${htmlUtil.escape(main_menu_job_title)}</small>
						</h3>
						<a class="loop-icon" href="https://loop.liferay.com/web/guest/home/-/loop/people/_${htmlUtil.escape(main_menu_screen_name)}">
							<svg xmlns="http://www.w3.org/2000/svg" version="1" viewBox="0 0 1200 1440"><path d="M840 1080l360-360-360-360-239 240-241-240S3 723 0 720l360 360 180-180-120-120-60 60-120-120 120-120 480 480zm0-480l120 120-120 120-120-120 120-120z"/></svg>
						</a>
					</div>
				</div>
				<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
                <@liferay_portlet["runtime"]
					defaultPreferences="${freeMarkerPortletPreferences}"
                    portletName="com_liferay_owxp_subscribe_portlet_OWXPSubscribePortlet"
                />
				<#assign VOID = freeMarkerPortletPreferences.reset() />
			</#if>

		</div>
	</aside>

	<section class="col-md-9" id="content">
		<div class="panel">
				<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />
                <@liferay_portlet["runtime"]
					defaultPreferences="${freeMarkerPortletPreferences}"
                    portletName="com_liferay_social_activities_web_portlet_SocialActivitiesPortlet"
                />
				<#assign VOID = freeMarkerPortletPreferences.reset() />
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>

		</div>
	</section>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>