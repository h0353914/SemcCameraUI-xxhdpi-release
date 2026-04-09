.class public Lcom/sonyericsson/android/camera/recorder/RecorderParameters;
.super Ljava/lang/Object;
.source "RecorderParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecorderParameters$Builder;,
        Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FILE_SIZE:J = 0x3b9aca0000L

.field private static final INVALID_VALUE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "RecorderParameters"


# instance fields
.field private mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

.field private mIsHdr:Z

.field private mIsMicrophoneEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mOrientationHint:I

.field private final mProfile:Landroid/media/CamcorderProfile;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I

    const-wide v0, 0x3b9aca0000L

    .line 76
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J

    .line 77
    iput p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I

    const/4 p2, 0x0

    .line 78
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    .line 79
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsHdr:Z

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/media/CamcorderProfile;Lcom/sonyericsson/android/camera/recorder/RecorderParameters$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;-><init>(Landroid/net/Uri;Landroid/media/CamcorderProfile;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I

    return p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;)Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsHdr:Z

    return p1
.end method

.method private isValid(J)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-object p0
.end method

.method public dump()V
    .locals 6

    .line 196
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 197
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 198
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " location:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 199
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " orientationHint:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 200
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " maxFileSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 201
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " maxDuration:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 202
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " profile:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isMicrophoneEnabled:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isHdr:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsHdr:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 205
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dataSpace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mDataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hasLocation()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMaxDuration()Z
    .locals 2

    .line 108
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public hasMaxFileSize()Z
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public hasOrientationHint()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->isValid(J)Z

    move-result p0

    return p0
.end method

.method public isHdr()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsHdr:Z

    return p0
.end method

.method public isMicrophoneEnabled()Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    return p0
.end method

.method public location()Landroid/location/Location;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public maxDuration()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxDuration:I

    return p0
.end method

.method public maxFileSize()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mMaxFileSize:J

    return-wide v0
.end method

.method public orientationHint()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mOrientationHint:I

    return p0
.end method

.method public outputUri()Landroid/net/Uri;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public profile()Landroid/media/CamcorderProfile;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method
