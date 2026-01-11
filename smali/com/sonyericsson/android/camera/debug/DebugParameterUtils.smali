.class public final Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;
.super Ljava/lang/Object;
.source "DebugParameterUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010 \u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\"\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u0004H\u0002J\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\'\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0012\u00a8\u0006("
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;",
        "",
        "()V",
        "KEY_DEBUG_ALWAYS_HDR_ON",
        "",
        "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE",
        "KEY_DEBUG_DISABLE_AUTO_POWER_OFF",
        "KEY_DEBUG_DISABLE_LOW_POWER_MODE",
        "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT",
        "KEY_DEBUG_EMULATE_SIDETOUCH",
        "KEY_DEBUG_ENABLE_DEBUG_EXIF",
        "KEY_DEBUG_FORCE_MIGRATE_SETTINGS",
        "KEY_DEBUG_SHOW_AUTO_HDR_ICON",
        "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW",
        "KEY_DEBUG_SHOW_SCENE_CONDITION",
        "SHARED_PREFERENCES_CAMERA_DEBUG",
        "isUserBuild",
        "",
        "()Z",
        "isUserBuild$delegate",
        "Lkotlin/Lazy;",
        "getSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "context",
        "Landroid/content/Context;",
        "isAlwaysHdrOnEnabled",
        "isAlwaysPredictiveCaptureEnabled",
        "isAutoPowerOffDisabled",
        "isDebugExifEnabled",
        "isEmulateSideTouchEnabled",
        "isLowPowerModeDisabled",
        "isMotionForNightDisabled",
        "isShowAutoHdrIconEnabled",
        "isShowDebugInfoOnPreview",
        "isShowSceneConditionEnabled",
        "isTrue",
        "key",
        "preload",
        "",
        "reset",
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


# static fields
.field public static final INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

.field public static final KEY_DEBUG_ALWAYS_HDR_ON:Ljava/lang/String; = "KEY_DEBUG_ALWAYS_HDR_ON"

.field public static final KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE:Ljava/lang/String; = "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

.field public static final KEY_DEBUG_DISABLE_AUTO_POWER_OFF:Ljava/lang/String; = "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

.field public static final KEY_DEBUG_DISABLE_LOW_POWER_MODE:Ljava/lang/String; = "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

.field public static final KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT:Ljava/lang/String; = "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

.field public static final KEY_DEBUG_EMULATE_SIDETOUCH:Ljava/lang/String; = "KEY_DEBUG_EMULATE_SIDETOUCH"

.field public static final KEY_DEBUG_ENABLE_DEBUG_EXIF:Ljava/lang/String; = "KEY_DEBUG_ENABLE_DEBUG_EXIF"

.field public static final KEY_DEBUG_FORCE_MIGRATE_SETTINGS:Ljava/lang/String; = "KEY_DEBUG_FORCE_MIGRATE_SETTINGS"

.field public static final KEY_DEBUG_SHOW_AUTO_HDR_ICON:Ljava/lang/String; = "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

.field public static final KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW:Ljava/lang/String; = "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

.field public static final KEY_DEBUG_SHOW_SCENE_CONDITION:Ljava/lang/String; = "KEY_DEBUG_SHOW_SCENE_CONDITION"

.field public static final SHARED_PREFERENCES_CAMERA_DEBUG:Ljava/lang/String; = "com.sonyericsson.android.camera.shared_preferences_debug"

.field private static final isUserBuild$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils$isUserBuild$2;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils$isUserBuild$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result p0

    if-nez p0, :cond_0

    .line 175
    const-string p0, "com.sonyericsson.android.camera.shared_preferences_debug"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final isTrue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final isAlwaysHdrOnEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    const-string v0, "KEY_DEBUG_ALWAYS_HDR_ON"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAlwaysPredictiveCaptureEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v0, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isAutoPowerOffDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-string v0, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDebugExifEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string v0, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isEmulateSideTouchEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "KEY_DEBUG_EMULATE_SIDETOUCH"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isLowPowerModeDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isMotionForNightDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    const-string v0, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isShowAutoHdrIconEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string v0, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isShowDebugInfoOnPreview(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const-string v0, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isShowSceneConditionEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const-string v0, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isTrue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isUserBuild()Z
    .locals 0

    .line 47
    sget-object p0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final preload(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public final reset(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    const-string p1, "KEY_DEBUG_DISABLE_AUTO_POWER_OFF"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string p1, "KEY_DEBUG_DISABLE_LOW_POWER_MODE"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string p1, "KEY_DEBUG_ALWAYS_PREDICTIVE_CAPTURE"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string p1, "KEY_DEBUG_EMULATE_SIDETOUCH"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string p1, "KEY_DEBUG_SHOW_SCENE_CONDITION"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string p1, "KEY_DEBUG_ENABLE_DEBUG_EXIF"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string p1, "KEY_DEBUG_ALWAYS_HDR_ON"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string p1, "KEY_DEBUG_SHOW_AUTO_HDR_ICON"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string p1, "KEY_DEBUG_SHOW_DEBUG_INFO_ON_PREVIEW"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string p1, "KEY_DEBUG_DISABLE_MOTION_FOR_NIGHT"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
