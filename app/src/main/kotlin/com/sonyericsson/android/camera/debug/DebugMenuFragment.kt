package com.sonyericsson.android.camera.debug

import android.content.Context
import android.content.SharedPreferences
import android.os.Bundle
import android.support.v14.preference.SwitchPreference
import android.support.v7.preference.Preference
import android.support.v7.preference.PreferenceFragmentCompat
import android.view.Menu
import android.view.MenuInflater
import android.view.MenuItem
import android.widget.Toast
import com.sonyericsson.android.camera.R
import com.sonyericsson.android.camera.device.CameraInfo
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor
import com.sonyericsson.android.camera.util.capability.PlatformCapability
@Suppress(names = ["DEPRECATION"])












class DebugMenuFragment : PreferenceFragmentCompat(), SharedPreferences.OnSharedPreferenceChangeListener {



    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        preferenceManager.setSharedPreferencesName("com.sonyericsson.android.camera.shared_preferences_debug")
        setPreferencesFromResource(R.xml.debug_preferences, rootKey)
        initialize()
    }


    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        setHasOptionsMenu(true)
    }


    override fun onCreateOptionsMenu(menu: Menu, inflater: MenuInflater) {
        super.onCreateOptionsMenu(menu, inflater)
        inflater.inflate(R.menu.debug_fragment_actionbar, menu)
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        val context = context
        if (context is Context) {
            if (item.itemId == R.id.debug_fragment_actionbar_reset) {
                reset(context)
            }
        }
        return true
    }




    override fun onResume() {
        super.onResume()
        preferenceScreen.sharedPreferences?.registerOnSharedPreferenceChangeListener(this)
    }


    override fun onPause() {
        super.onPause()
        preferenceScreen.sharedPreferences?.unregisterOnSharedPreferenceChangeListener(this)
    }

    override fun onSharedPreferenceChanged(sharedPreferences: SharedPreferences, key: String?) {
        when (key) {
            "KEY_DEBUG_DISABLE_AUTO_POWER_OFF" -> {
                val pref = findPreference(key) as SwitchPreference
                pref.setChecked(sharedPreferences.getBoolean(key, false))
            }
            "KEY_DEBUG_DISABLE_LOW_POWER_MODE" -> {
                val pref = findPreference(key) as SwitchPreference
                pref.setChecked(sharedPreferences.getBoolean(key, false))
                showKillProcessToast()
            }
            "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE" -> {
                val pref = findPreference(key) as SwitchPreference
                pref.setChecked(sharedPreferences.getBoolean(key, false))
            }
            "KEY_DEBUG_EMULATE_SIDETOUCH" -> {
                val pref = findPreference(key) as SwitchPreference
                pref.setChecked(sharedPreferences.getBoolean(key, false))
            }
        }
    }



    private fun initialize() {
        initializeAutoPowerOff()
        initializeLowPowerMode()
        initializeForceSettingMigration()
        initializePredictiveCaptureOn()
        initializeEmulateSideTouch()
    }


    private fun initializeAutoPowerOff() {
        val pref = findPreference("KEY_DEBUG_DISABLE_AUTO_POWER_OFF") as SwitchPreference

        val value = preferenceScreen.sharedPreferences
                .getBoolean("KEY_DEBUG_DISABLE_AUTO_POWER_OFF", false)
        pref.setChecked(value)
    }


    private fun initializeLowPowerMode() {
        val pref = findPreference("KEY_DEBUG_DISABLE_LOW_POWER_MODE") as SwitchPreference

        val value = preferenceScreen.sharedPreferences
                .getBoolean("KEY_DEBUG_DISABLE_LOW_POWER_MODE", false)
        pref.setChecked(value)
    }


    private fun initializeForceSettingMigration() {
        val settingMigration = findPreference("KEY_DEBUG_FORCE_MIGRATE_SETTINGS")

        settingMigration.setOnPreferenceClickListener {
            clearFingerPrint()
            true
        }
    }


    private fun initializePredictiveCaptureOn() {
        val pref = findPreference("KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE") as SwitchPreference

        val value = preferenceScreen.sharedPreferences
                .getBoolean("KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE", false)
        pref.setChecked(value)
    }


    private fun initializeEmulateSideTouch() {
        val pref = findPreference("KEY_DEBUG_EMULATE_SIDETOUCH") as SwitchPreference

        val value = preferenceScreen.sharedPreferences
                .getBoolean("KEY_DEBUG_EMULATE_SIDETOUCH", false)
        pref.setChecked(value)
    }

    private fun reset(context: Context) {
        DebugParameterUtils.reset(context)
        initialize()
    }


    private fun showKillProcessToast() {
        Toast.makeText(context, R.string.debug_preference_toast_kill_process, Toast.LENGTH_SHORT)
            .show()
    }


    private fun clearFingerPrint() {
        for (cameraId in CameraInfo.CameraId.values()) {
            val fileName = PlatformCapability.getFileNameForCameraCapability(cameraId)
            val sp = SharedPreferencesAccessor.getSharedPreferences(context, fileName, 0)
            if (sp == null) {
                return
            }
            sp.edit().remove("android.os.Build.FINGERPRINT").commit()
        }
        Toast.makeText(context, R.string.debug_preference_toast_execute_settings_migration, Toast.LENGTH_SHORT)
            .show()
    }
}
