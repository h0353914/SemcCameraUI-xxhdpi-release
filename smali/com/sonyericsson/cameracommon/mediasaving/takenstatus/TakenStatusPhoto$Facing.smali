.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
.super Ljava/lang/Enum;
.source "TakenStatusPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Facing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

.field public static final enum BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

.field public static final enum FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    .locals 3

    .line 36
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    const-string v1, "BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 36
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->$values()[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    .locals 1

    .line 36
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-object v0
.end method
