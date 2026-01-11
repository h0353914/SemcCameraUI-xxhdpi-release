.class public final Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
.super Ljava/lang/Object;
.source "CapturingModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;,
        Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;
    }
.end annotation


# static fields
.field public static final APP_TIMEOUT_RESULT_CODE:I = 0x2

.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

.field public static final VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public isOpened()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setOnModeFinishListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;)V
    .locals 0

    return-void
.end method

.method public setOnModeSelectListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;)V
    .locals 0

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    return-void
.end method
