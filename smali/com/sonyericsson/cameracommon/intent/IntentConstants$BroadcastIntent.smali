.class public Lcom/sonyericsson/cameracommon/intent/IntentConstants$BroadcastIntent;
.super Ljava/lang/Object;
.source "IntentConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/intent/IntentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntent"
.end annotation


# static fields
.field public static final ACTION_CAMERA_COOLED_DOWN_NORMAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

.field public static final ACTION_CAMERA_FINISH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.FINISH"

.field public static final ACTION_CAMERA_FINISH_CAMERAACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

.field public static final ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

.field public static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field public static final ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

.field public static final ACTION_CAMERA_LAUNCH:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.LAUNCH"

.field public static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

.field public static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

.field public static final ACTION_CAMERA_NEW_PICT:Ljava/lang/String; = "com.android.camera.NEW_PICTURE"

.field public static final ACTION_MUSICSERVICE_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

.field public static final EXTRA_PREDICTIVE_CAPTURE_DIRECTORY_PATH:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH"

.field public static final KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC:Ljava/lang/String; = "com.sonyericsson.psm.extra.TIMEOUT_SEC"

.field public static final MUSICSERVICE_COMMAND:Ljava/lang/String; = "command"

.field public static final MUSICSERVICE_COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field public static final PREDICTIVE_CAPTURE_SAVE_COMPLETED:Ljava/lang/String; = "com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED"

.field public static final VARIABLE_LOW_TEMP_BURN_TIMER_LIMIT_MINUTES:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
