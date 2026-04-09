.class final enum Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
.super Ljava/lang/Enum;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field public static final enum START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "PREPARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "START_SECURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "CANCEL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "ACTIVITY_RESUMED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const-string v1, "ACTIVITY_PAUSED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    const/4 v0, 0x7

    .line 70
    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
    .locals 1

    .line 70
    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;
    .locals 1

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->$VALUES:[Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    return-object v0
.end method
