.class public final Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DebugMenuFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0008\u0010\r\u001a\u00020\u0005H\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0012\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001c\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0005H\u0016J\u0008\u0010\"\u001a\u00020\u0005H\u0016J\u001a\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020\u0005H\u0002\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "()V",
        "clearFingerPrint",
        "",
        "initialize",
        "initializeAutoPowerOff",
        "initializeEmulateSideTouch",
        "initializeEnableDebugExif",
        "initializeForceSettingMigration",
        "initializeHdrOn",
        "initializeLowPowerMode",
        "initializeMotionForNight",
        "initializePredictiveCaptureOn",
        "initializeShowAutoHdrIcon",
        "initializeShowCameraParameters",
        "initializeShowSceneCondition",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onCreatePreferences",
        "rootKey",
        "",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onPause",
        "onResume",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "key",
        "reset",
        "context",
        "Landroid/content/Context;",
        "showKillProcessToast",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0bA-etN_y9QITIRTuQnmemTwPZQ(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeForceSettingMigration$lambda$0(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private final clearFingerPrint()V
    .locals 6

    .line 242
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v5, v4, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 248
    const-string v5, "android.os.Build.FINGERPRINT"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0f04da

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final initialize()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeAutoPowerOff()V

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeLowPowerMode()V

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeForceSettingMigration()V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializePredictiveCaptureOn()V

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeEmulateSideTouch()V

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeShowSceneCondition()V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeEnableDebugExif()V

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeHdrOn()V

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeShowAutoHdrIcon()V

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeShowCameraParameters()V

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeMotionForNight()V

    return-void
.end method

.method private final initializeAutoPowerOff()V
    .locals 3

    .line 130
    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 132
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeEmulateSideTouch()V
    .locals 3

    .line 163
    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 165
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeEnableDebugExif()V
    .locals 3

    .line 179
    const-string v0, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 181
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeForceSettingMigration()V
    .locals 2

    .line 146
    const-string v0, "KEY_DEBUG_FORCE_MIGRATE_SETTINGS"

    check-cast v0, Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private static final initializeForceSettingMigration$lambda$0(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->clearFingerPrint()V

    const/4 p0, 0x1

    return p0
.end method

.method private final initializeHdrOn()V
    .locals 5

    .line 187
    const-string v0, "KEY_DEBUG_ALWAYS_HDR_ON"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 186
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 188
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 190
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->HDR:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 191
    const-string v4, "on-still-hdr"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private final initializeLowPowerMode()V
    .locals 3

    .line 138
    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 140
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeMotionForNight()V
    .locals 3

    .line 221
    const-string v0, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 223
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializePredictiveCaptureOn()V
    .locals 3

    .line 155
    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 157
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeShowAutoHdrIcon()V
    .locals 3

    .line 205
    const-string v0, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 204
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 207
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeShowCameraParameters()V
    .locals 3

    .line 213
    const-string v0, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 212
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 215
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeShowSceneCondition()V
    .locals 3

    .line 171
    const-string v0, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x0

    .line 173
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final reset(Landroid/content/Context;)V
    .locals 1

    .line 228
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->reset(Landroid/content/Context;)V

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method private final showKillProcessToast()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0f04db

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/high16 p0, 0x7f0d0000

    .line 43
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.sonyericsson.android.camera.shared_preferences_debug"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const p1, 0x7f120002

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f0900b6

    if-ne p1, v1, :cond_0

    .line 50
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->reset(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "null cannot be cast to non-null type androidx.preference.SwitchPreference"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 74
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 75
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->showKillProcessToast()V

    goto/16 :goto_0

    .line 68
    :sswitch_1
    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 83
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 84
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 68
    :sswitch_2
    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 70
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 71
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 68
    :sswitch_3
    const-string v0, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 91
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 92
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 68
    :sswitch_4
    const-string v0, "KEY_DEBUG_ALWAYS_HDR_ON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 95
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 96
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 68
    :sswitch_5
    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 79
    :cond_5
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 80
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 68
    :sswitch_6
    const-string v0, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 87
    :cond_6
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 88
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 68
    :sswitch_7
    const-string v0, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 107
    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 108
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 68
    :sswitch_8
    const-string v0, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 103
    :cond_8
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 104
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 68
    :sswitch_9
    const-string v0, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 99
    :cond_9
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/preference/SwitchPreference;

    .line 100
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58301964 -> :sswitch_9
        -0x31dea0c9 -> :sswitch_8
        -0x2e9bf944 -> :sswitch_7
        -0x221d5fce -> :sswitch_6
        -0x310e896 -> :sswitch_5
        0x32236d0c -> :sswitch_4
        0x37348acc -> :sswitch_3
        0x3bf72c48 -> :sswitch_2
        0x715932b0 -> :sswitch_1
        0x77f1fa8b -> :sswitch_0
    .end sparse-switch
.end method
