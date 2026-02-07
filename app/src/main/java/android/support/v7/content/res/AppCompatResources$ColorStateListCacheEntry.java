package android.support.v7.content.res;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class AppCompatResources$ColorStateListCacheEntry {
    final Configuration configuration;
    final ColorStateList value;

    AppCompatResources$ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
        this.value = colorStateList;
        this.configuration = configuration;
    }
}
