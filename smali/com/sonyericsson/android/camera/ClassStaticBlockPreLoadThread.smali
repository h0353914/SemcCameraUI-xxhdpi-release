.class Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;
.super Ljava/lang/Thread;
.source "ClassStaticBlockPreLoadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;
    }
.end annotation


# static fields
.field private static final IS_CLASS_LOAD_TIME_MEASUREMENT:Z = false

.field public static final TAG:Ljava/lang/String; = "ClassStaticBlockPreLoadThread"


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->mCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    return-void
.end method

.method private final preload()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->preloadViaFunctionCall()V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->mCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->mCallback:Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;->onPreloadDone()V

    :cond_0
    return-void
.end method

.method private final preloadViaFunctionCall()V
    .locals 0

    .line 68
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 80
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->preload()V

    .line 84
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity;->preload()V

    .line 88
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preload()V

    .line 92
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateMachine;->preload()V

    .line 96
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->preload()V

    .line 105
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->preload()V

    .line 114
    invoke-static {}, Lcom/sonyericsson/android/camera/Constants;->preload()V

    .line 118
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->preload()V

    .line 122
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesConstants;->preload()V

    .line 126
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->preload()V

    .line 130
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->preload()V

    .line 134
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->preload()V

    .line 138
    invoke-static {}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;->preload()V

    .line 146
    invoke-static {}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->preload()V

    .line 150
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->preload()V

    .line 158
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;->preload()V

    return-void
.end method
