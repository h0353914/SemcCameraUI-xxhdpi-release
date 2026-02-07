package com.sonyericsson.android.camera.debug;

import android.support.v7.preference.Preference;
import android.support.v7.preference.Preference$OnPreferenceClickListener;
import kotlin.Metadata;

/* JADX INFO: compiled from: DebugMenuFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/support/v7/preference/Preference;", "kotlin.jvm.PlatformType", "onPreferenceClick"}, k = 3, mv = {1, 1, 11})
final class DebugMenuFragment$initializeForceSettingMigration$1 implements Preference$OnPreferenceClickListener {
    final /* synthetic */ DebugMenuFragment this$0;

    DebugMenuFragment$initializeForceSettingMigration$1(DebugMenuFragment debugMenuFragment) {
        this.this$0 = debugMenuFragment;
    }

    @Override // android.support.v7.preference.Preference$OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        DebugMenuFragment.access$clearFingerPrint(this.this$0);
        return true;
    }
}
