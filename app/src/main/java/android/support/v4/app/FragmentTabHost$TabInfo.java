package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

final class FragmentTabHost$TabInfo {

    @Nullable
    final Bundle args;

    @NonNull
    final Class<?> clss;
    Fragment fragment;

    @NonNull
    final String tag;

    FragmentTabHost$TabInfo(@NonNull String str, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        this.tag = str;
        this.clss = cls;
        this.args = bundle;
    }
}
