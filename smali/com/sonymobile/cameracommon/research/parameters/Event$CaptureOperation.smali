.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;


# instance fields
.field private final mIsShooting:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 132
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 134
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 136
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 138
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING"

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v5, v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v6, v6, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 140
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "BURST"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 142
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST"

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v7, v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v8, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v8, v8, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v7, v8

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 144
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST"

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v7, v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v9, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v9, v9, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v7, v9

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 146
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST"

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v7, v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v10, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v10, v10, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v7, v10

    sget-object v10, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v10, v10, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 148
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "VIEWER"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 150
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v12, v12, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 152
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v13, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v13, v13, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v13

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 154
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v14, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v14, v14, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v14

    sget-object v14, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v14, v14, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v14

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 156
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "BURST_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 158
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 160
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 162
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST_VIEWER"

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v11, v11, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    sget-object v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v15, v15, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v11, v15

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const/16 v0, 0x10

    .line 131
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    .line 171
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mIsShooting:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    .locals 1

    .line 131
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    .locals 1

    .line 131
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .locals 0

    .line 191
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    return p0
.end method

.method public getViewer()Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .locals 0

    .line 186
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object p0
.end method

.method public isShooting()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mIsShooting:Z

    return p0
.end method

.method public updateOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .locals 4

    .line 197
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getValue()I

    move-result p1

    .line 198
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr p0, p1

    .line 202
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 203
    iget v3, v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    if-ne v3, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
