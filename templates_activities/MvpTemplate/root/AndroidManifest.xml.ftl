<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity android:name="${relativePackage}.Activity${mvpModuleName}"
            android:label="@string/title_${activityToLayout(mvpModuleName)}" />
    </application>

</manifest>
