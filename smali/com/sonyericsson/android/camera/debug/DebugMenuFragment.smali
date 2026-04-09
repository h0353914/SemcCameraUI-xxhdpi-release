.class public final Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "DebugMenuFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0012\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001c\u0010\u0014\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0005H\u0016J\u0008\u0010\u001c\u001a\u00020\u0005H\u0016J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0016H\u0016J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020\u0005H\u0002\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;",
        "Landroid/support/v7/preference/PreferenceFragmentCompat;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "()V",
        "clearFingerPrint",
        "",
        "initialize",
        "initializeAutoPowerOff",
        "initializeEmulateSideTouch",
        "initializeForceSettingMigration",
        "initializeLowPowerMode",
        "initializePredictiveCaptureOn",
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
        0x1,
        0xb
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearFingerPrint(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->clearFingerPrint()V

    return-void
.end method

.method private final clearFingerPrint()V
    .locals 6

    .line 154
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileNameForCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v5, v4, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 159
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "android.os.Build.FINGERPRINT"

    .line 160
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0f0349

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final initialize()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeAutoPowerOff()V

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeLowPowerMode()V

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeForceSettingMigration()V

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializePredictiveCaptureOn()V

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeEmulateSideTouch()V

    return-void
.end method

.method private final initializeAutoPowerOff()V
    .locals 3

    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 99
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "preferenceScreen"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    const/4 v2, 0x0

    .line 102
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeEmulateSideTouch()V
    .locals 3

    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 132
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "preferenceScreen"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "KEY_DEBUG_EMULATE_SIDETOUCH"

    const/4 v2, 0x0

    .line 135
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializeForceSettingMigration()V
    .locals 2

    const-string v0, "KEY_DEBUG_FORCE_MIGRATE_SETTINGS"

    .line 115
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "settingMigration"

    .line 117
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;-><init>(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V

    check-cast v1, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private final initializeLowPowerMode()V
    .locals 3

    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    .line 107
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "preferenceScreen"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    const/4 v2, 0x0

    .line 110
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final initializePredictiveCaptureOn()V
    .locals 3

    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 124
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "preferenceScreen"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    const/4 v2, 0x0

    .line 127
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private final reset(Landroid/content/Context;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->reset(Landroid/content/Context;)V

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method private final showKillProcessToast()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0f034a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/high16 p0, 0x7f0d0000

    .line 44
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.sonyericsson.android.camera.shared_preferences_debug"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const p1, 0x7f120002

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initialize()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f09007b

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->reset(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x310e896

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const v1, 0x3bf72c48

    if-eq v0, v1, :cond_4

    const v1, 0x715932b0

    if-eq v0, v1, :cond_2

    const v1, 0x77f1fa8b

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 76
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->showKillProcessToast()V

    goto :goto_0

    :cond_2
    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast p0, Landroid/support/v14/preference/SwitchPreference;

    .line 85
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    check-cast p0, Landroid/support/v14/preference/SwitchPreference;

    .line 72
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v14.preference.SwitchPreference"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    check-cast p0, Landroid/support/v14/preference/SwitchPreference;

    .line 81
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    :goto_0
    return-void
.end method
