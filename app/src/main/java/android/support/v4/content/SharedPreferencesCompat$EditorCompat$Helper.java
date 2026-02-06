package android.support.v4.content;

import android.content.SharedPreferences$Editor;
import android.support.annotation.NonNull;

class SharedPreferencesCompat$EditorCompat$Helper {
    SharedPreferencesCompat$EditorCompat$Helper() {
    }

    public void apply(@NonNull SharedPreferences$Editor sharedPreferences$Editor) {
        try {
            sharedPreferences$Editor.apply();
        } catch (AbstractMethodError unused) {
            sharedPreferences$Editor.commit();
        }
    }
}
