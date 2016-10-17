<?xml version="1.0"?>
<recipe>
	<dependency mavenUrl="com.hannesdorfmann.mosby:mvp:+" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings_${activityToLayout(mvpModuleName)}.xml" />

    <instantiate from="root/res/layout/activity.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${activityToLayout(mvpModuleName)}.xml" />
	
    <instantiate from="root/src/app_package/MvpContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Mvp${mvpModuleName}.java" />
				   
	<instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Activity${mvpModuleName}.java" />
				   
	<instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Presenter${mvpModuleName}.java" />
				   
	<instantiate from="root/src/app_package/Interactor.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/Interactor${mvpModuleName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/Mvp${mvpModuleName}.java" />
</recipe>
