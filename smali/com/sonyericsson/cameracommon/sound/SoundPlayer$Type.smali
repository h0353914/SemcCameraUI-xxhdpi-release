.class public final enum Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
.super Ljava/lang/Enum;
.source "SoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

.field public static final enum SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

.field public static final enum SELF_TIMER_3SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

.field public static final enum SELF_TIMER_4SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;


# instance fields
.field private final SOUND_DIRS:[Ljava/lang/String;

.field private final resourceId:I

.field private final soundName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 183
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const-string v1, "SELF_TIMER_1SEC"

    const-string v2, "selftimer_1sec.m4a"

    const/4 v3, 0x0

    const v4, 0x7f0e0014

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 184
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const-string v1, "SELF_TIMER_3SEC"

    const-string v2, "selftimer_3sec.m4a"

    const/4 v4, 0x1

    const v5, 0x7f0e0015

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_3SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 185
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const-string v1, "SELF_TIMER_4SEC"

    const-string v2, "selftimer_4sec.m4a"

    const/4 v5, 0x2

    const v6, 0x7f0e0016

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_4SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const/4 v0, 0x3

    .line 182
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    sget-object v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_3SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_4SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->$VALUES:[Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "/system/media/audio/ui/common/"

    .line 187
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SOUND_DIRS:[Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->soundName:Ljava/lang/String;

    .line 196
    iput p4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->resourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)Ljava/lang/String;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->getSoundFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->resourceId:I

    return p0
.end method

.method private getSoundFile()Ljava/lang/String;
    .locals 4

    .line 200
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SOUND_DIRS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SOUND_DIRS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->soundName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
    .locals 1

    .line 182
    const-class v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
    .locals 1

    .line 182
    sget-object v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->$VALUES:[Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    return-object v0
.end method
