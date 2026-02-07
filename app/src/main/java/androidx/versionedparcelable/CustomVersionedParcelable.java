package androidx.versionedparcelable;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public abstract class CustomVersionedParcelable implements VersionedParcelable {
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void onPostParceling() {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void onPreParceling(boolean z) {
    }
}
