.class public final enum Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;
.super Ljava/lang/Enum;
.source "DoubleTapInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

.field public static final enum FarPosition:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

.field public static final enum FastTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

.field public static final enum SlowTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

.field public static final enum Success:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->Success:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    .line 19
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    const-string v2, "FastTap"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->FastTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    .line 20
    new-instance v2, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    const-string v3, "SlowTap"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->SlowTap:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    .line 21
    new-instance v3, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    const-string v4, "FarPosition"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->FarPosition:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    .line 17
    filled-new-array {v0, v1, v2, v3}, [Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->$VALUES:[Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;
    .locals 1

    .line 17
    const-class v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;
    .locals 1

    .line 17
    sget-object v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->$VALUES:[Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    invoke-virtual {v0}, [Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo$Status;

    return-object v0
.end method
