.class public final enum Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
.super Ljava/lang/Enum;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum SUB_BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mIsFront:Z


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 11

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SUB_BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->INVALID:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v8, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v10, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    filled-new-array/range {v0 .. v10}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "FRONT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "SUB_BACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SUB_BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "U_WIDE"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "TELE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "INVALID"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->INVALID:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "FRONT_2"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK_DUAL"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "WIDE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "SAT"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BOKEH"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 37
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return-void
.end method

.method private getIdFromCameraIdsMap()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 37
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceId()Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraDeviceIdApi1()I
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    :goto_0
    return-object p0
.end method

.method public isFront()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return p0
.end method
