.class public final enum Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
.super Ljava/lang/Enum;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 15

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v6, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v7, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v8, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v9, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v13, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v14, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    filled-new-array/range {v0 .. v14}, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "PHOTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "BURST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "PREDICTIVE_CAPTURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT_VIDEO_120F"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "VIDEO_4K"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "SUPER_SLOW_MOTION_VIDEO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "SUPER_SLOW_SHOT_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "STANDARD_SLOW_MOTION_VIDEO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "HIGH_FRAME_RATE_VIDEO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "HDR_VIDEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "HDR_VIDEO_4K"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HDR_VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 50
    invoke-static {}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$values()[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 1

    .line 50
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 1

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object v0
.end method
