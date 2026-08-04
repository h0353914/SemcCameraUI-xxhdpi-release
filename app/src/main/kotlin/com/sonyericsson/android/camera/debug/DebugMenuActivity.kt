package com.sonyericsson.android.camera.debug

import android.os.Bundle
import android.support.v4.app.FragmentActivity












class DebugMenuActivity : FragmentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (DebugParameterUtils.isUserBuild) {
            finish()
            return
        }



        if (savedInstanceState == null) {
            val fragment = DebugMenuFragment()
            supportFragmentManager
                .beginTransaction()
                .replace(android.R.id.content, fragment as android.support.v4.app.Fragment, null)
                .commit()
        }
    }
}
