package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class CapabilityItem<T> {
    public static final String TAG = "CapabilityItem";
    private final String mName;
    private final T mValue;

    abstract T getDefaultValue();

    T read(SharedPreferences sharedPreferences, String str) {
        return null;
    }

    void write(SharedPreferences$Editor sharedPreferences$Editor) {
    }

    CapabilityItem(String str, T t) {
        this.mName = str;
        this.mValue = t;
        if (CamLog.VERBOSE) {
            CamLog.d(str, " value: " + t);
        }
    }

    CapabilityItem(String str, SharedPreferences sharedPreferences) {
        this.mName = str;
        this.mValue = read(sharedPreferences, str);
    }

    public final String getName() {
        return this.mName;
    }

    public final T get() {
        if (this.mValue == null) {
            return getDefaultValue();
        }
        return this.mValue;
    }
}
