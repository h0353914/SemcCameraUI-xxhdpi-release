package android.support.v7.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.os.Build$VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.content.ContextCompat;

/* JADX INFO: loaded from: classes.dex */
public class PreferenceManager {
    public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";
    private static final int STORAGE_DEFAULT = 0;
    private static final int STORAGE_DEVICE_PROTECTED = 1;
    private Context mContext;

    @Nullable
    private SharedPreferences$Editor mEditor;
    private boolean mNoCommit;
    private PreferenceManager$OnDisplayPreferenceDialogListener mOnDisplayPreferenceDialogListener;
    private PreferenceManager$OnNavigateToScreenListener mOnNavigateToScreenListener;
    private PreferenceManager$OnPreferenceTreeClickListener mOnPreferenceTreeClickListener;
    private PreferenceManager$PreferenceComparisonCallback mPreferenceComparisonCallback;

    @Nullable
    private PreferenceDataStore mPreferenceDataStore;
    private PreferenceScreen mPreferenceScreen;

    @Nullable
    private SharedPreferences mSharedPreferences;
    private int mSharedPreferencesMode;
    private String mSharedPreferencesName;
    private long mNextId = 0;
    private int mStorage = 0;

    private static int getDefaultSharedPreferencesMode() {
        return 0;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public PreferenceManager(Context context) {
        this.mContext = context;
        setSharedPreferencesName(getDefaultSharedPreferencesName(context));
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public PreferenceScreen inflateFromResource(Context context, int i, PreferenceScreen preferenceScreen) {
        setNoCommit(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new PreferenceInflater(context, this).inflate(i, preferenceScreen);
        preferenceScreen2.onAttachedToHierarchy(this);
        setNoCommit(false);
        return preferenceScreen2;
    }

    public PreferenceScreen createPreferenceScreen(Context context) {
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.onAttachedToHierarchy(this);
        return preferenceScreen;
    }

    long getNextId() {
        long j;
        synchronized (this) {
            j = this.mNextId;
            this.mNextId = 1 + j;
        }
        return j;
    }

    public String getSharedPreferencesName() {
        return this.mSharedPreferencesName;
    }

    public void setSharedPreferencesName(String str) {
        this.mSharedPreferencesName = str;
        this.mSharedPreferences = null;
    }

    public int getSharedPreferencesMode() {
        return this.mSharedPreferencesMode;
    }

    public void setSharedPreferencesMode(int i) {
        this.mSharedPreferencesMode = i;
        this.mSharedPreferences = null;
    }

    public void setStorageDefault() {
        if (Build$VERSION.SDK_INT >= 24) {
            this.mStorage = 0;
            this.mSharedPreferences = null;
        }
    }

    public void setStorageDeviceProtected() {
        if (Build$VERSION.SDK_INT >= 24) {
            this.mStorage = 1;
            this.mSharedPreferences = null;
        }
    }

    public boolean isStorageDefault() {
        return Build$VERSION.SDK_INT < 24 || this.mStorage == 0;
    }

    public boolean isStorageDeviceProtected() {
        return Build$VERSION.SDK_INT >= 24 && this.mStorage == 1;
    }

    public void setPreferenceDataStore(PreferenceDataStore preferenceDataStore) {
        this.mPreferenceDataStore = preferenceDataStore;
    }

    @Nullable
    public PreferenceDataStore getPreferenceDataStore() {
        return this.mPreferenceDataStore;
    }

    public SharedPreferences getSharedPreferences() {
        Context contextCreateDeviceProtectedStorageContext;
        if (getPreferenceDataStore() != null) {
            return null;
        }
        if (this.mSharedPreferences == null) {
            if (this.mStorage == 1) {
                contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(this.mContext);
            } else {
                contextCreateDeviceProtectedStorageContext = this.mContext;
            }
            this.mSharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences(this.mSharedPreferencesName, this.mSharedPreferencesMode);
        }
        return this.mSharedPreferences;
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        return context.getSharedPreferences(getDefaultSharedPreferencesName(context), getDefaultSharedPreferencesMode());
    }

    private static String getDefaultSharedPreferencesName(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceScreen;
    }

    public boolean setPreferences(PreferenceScreen preferenceScreen) {
        if (preferenceScreen == this.mPreferenceScreen) {
            return false;
        }
        if (this.mPreferenceScreen != null) {
            this.mPreferenceScreen.onDetached();
        }
        this.mPreferenceScreen = preferenceScreen;
        return true;
    }

    public Preference findPreference(CharSequence charSequence) {
        if (this.mPreferenceScreen == null) {
            return null;
        }
        return this.mPreferenceScreen.findPreference(charSequence);
    }

    public static void setDefaultValues(Context context, int i, boolean z) {
        setDefaultValues(context, getDefaultSharedPreferencesName(context), getDefaultSharedPreferencesMode(), i, z);
    }

    public static void setDefaultValues(Context context, String str, int i, int i2, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("_has_set_default_values", 0);
        if (z || !sharedPreferences.getBoolean("_has_set_default_values", false)) {
            PreferenceManager preferenceManager = new PreferenceManager(context);
            preferenceManager.setSharedPreferencesName(str);
            preferenceManager.setSharedPreferencesMode(i);
            preferenceManager.inflateFromResource(context, i2, null);
            sharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
        }
    }

    SharedPreferences$Editor getEditor() {
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (this.mNoCommit) {
            if (this.mEditor == null) {
                this.mEditor = getSharedPreferences().edit();
            }
            return this.mEditor;
        }
        return getSharedPreferences().edit();
    }

    boolean shouldCommit() {
        return !this.mNoCommit;
    }

    private void setNoCommit(boolean z) {
        if (!z && this.mEditor != null) {
            this.mEditor.apply();
        }
        this.mNoCommit = z;
    }

    public Context getContext() {
        return this.mContext;
    }

    public PreferenceManager$PreferenceComparisonCallback getPreferenceComparisonCallback() {
        return this.mPreferenceComparisonCallback;
    }

    public void setPreferenceComparisonCallback(PreferenceManager$PreferenceComparisonCallback preferenceManager$PreferenceComparisonCallback) {
        this.mPreferenceComparisonCallback = preferenceManager$PreferenceComparisonCallback;
    }

    public PreferenceManager$OnDisplayPreferenceDialogListener getOnDisplayPreferenceDialogListener() {
        return this.mOnDisplayPreferenceDialogListener;
    }

    public void setOnDisplayPreferenceDialogListener(PreferenceManager$OnDisplayPreferenceDialogListener preferenceManager$OnDisplayPreferenceDialogListener) {
        this.mOnDisplayPreferenceDialogListener = preferenceManager$OnDisplayPreferenceDialogListener;
    }

    public void showDialog(Preference preference) {
        if (this.mOnDisplayPreferenceDialogListener != null) {
            this.mOnDisplayPreferenceDialogListener.onDisplayPreferenceDialog(preference);
        }
    }

    public void setOnPreferenceTreeClickListener(PreferenceManager$OnPreferenceTreeClickListener preferenceManager$OnPreferenceTreeClickListener) {
        this.mOnPreferenceTreeClickListener = preferenceManager$OnPreferenceTreeClickListener;
    }

    public PreferenceManager$OnPreferenceTreeClickListener getOnPreferenceTreeClickListener() {
        return this.mOnPreferenceTreeClickListener;
    }

    public void setOnNavigateToScreenListener(PreferenceManager$OnNavigateToScreenListener preferenceManager$OnNavigateToScreenListener) {
        this.mOnNavigateToScreenListener = preferenceManager$OnNavigateToScreenListener;
    }

    public PreferenceManager$OnNavigateToScreenListener getOnNavigateToScreenListener() {
        return this.mOnNavigateToScreenListener;
    }
}
