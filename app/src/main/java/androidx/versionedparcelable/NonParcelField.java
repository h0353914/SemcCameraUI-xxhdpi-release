package androidx.versionedparcelable;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.SOURCE)
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public @interface NonParcelField {
}
