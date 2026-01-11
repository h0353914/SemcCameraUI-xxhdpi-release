.class public Lcom/google/lens/sdk/LensApi;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;,
        Lcom/google/lens/sdk/LensApi$LensLaunchStatus;,
        Lcom/google/lens/sdk/LensApi$LensFeature;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
    }
.end annotation


# static fields
.field static final a:Landroid/net/Uri;

.field public static final synthetic b:I


# instance fields
.field private final c:Lal;

.field private final d:Laq;

.field private final e:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "googleapp://lens"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "keyguard"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 4
    new-instance v0, Lal;

    invoke-direct {v0, p1}, Lal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v1, Laq;

    .line 5
    invoke-direct {v1, p1, v0}, Laq;-><init>(Landroid/content/Context;Lal;)V

    iput-object v1, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    return-void
.end method

.method private final a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 45
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lbp;

    invoke-direct {v0, p3, p2}, Lbp;-><init>(Ljava/lang/Runnable;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 50
    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    .line 51
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 52
    invoke-interface {p2, p0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 6

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    iget-object p0, p0, Lal;->f:Lbi;

    iget-object p0, p0, Lbi;->c:Ljava/lang/String;

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 30
    const-string v0, "\\."

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 32
    array-length v0, p0

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 33
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 34
    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_1

    if-gt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1

    .line 35
    :cond_2
    array-length p0, p0

    array-length p1, p1

    if-ge p0, p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 104
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 105
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lo;->c:Lo;

    .line 107
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    .line 106
    sget v2, Lm;->cI:I

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    .line 106
    :goto_0
    iget-object v3, v0, Ln;->b:Lde;

    .line 109
    check-cast v3, Lo;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    iput v4, v3, Lo;->b:I

    iget v2, v3, Lo;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Lo;->a:I

    .line 110
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    :try_start_0
    iget-object p0, p0, Laq;->a:Las;

    .line 111
    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    .line 112
    invoke-static {}, Leb;->c()V

    move-object v2, p0

    check-cast v2, Lba;

    .line 113
    invoke-virtual {v2}, Lba;->c()Z

    move-result v2

    const-string v3, "Attempted to use lensServiceSession before ready."

    invoke-static {v2, v3}, Leb;->a(ZLjava/lang/String;)V

    check-cast p0, Lba;

    iget-object p0, p0, Lba;->g:Lg;

    .line 114
    invoke-static {p0}, Leb;->a(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lg;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 109
    const-string v0, "LensServiceBridge"

    const-string v2, "Unable to send prewarm signal."

    .line 115
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 109
    throw p0

    .line 114
    :cond_2
    :goto_1
    new-instance p0, Landroid/content/Intent;

    .line 116
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1, p0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lbs;)V
    .locals 8

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-object v6, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v7, Lbm;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    .line 101
    invoke-direct/range {v0 .. v5}, Lbm;-><init>(Lcom/google/lens/sdk/LensApi;Lbs;JLandroid/app/Activity;)V

    .line 102
    invoke-static {}, Leb;->c()V

    new-instance p0, Lao;

    .line 103
    invoke-direct {p0, v6, v7}, Lao;-><init>(Laq;Lap;)V

    invoke-virtual {v6, p0}, Laq;->a(Lap;)V

    return-void
.end method

.method public final a(Lbs;)V
    .locals 4

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 120
    invoke-virtual {v0}, Laq;->c()Lz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbs;->a(Lz;)Landroid/os/Bundle;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Laq;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 122
    invoke-virtual {p0}, Laq;->c()Lz;

    invoke-virtual {p1}, Lbs;->c()Landroid/os/Bundle;

    move-result-object p1

    .line 123
    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    .line 124
    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lo;->c:Lo;

    .line 126
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    .line 125
    sget v1, Lm;->cM:I

    iget-boolean v2, v0, Lda;->c:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lda;->b()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lda;->c:Z

    .line 125
    :goto_0
    iget-object v2, v0, Ln;->b:Lde;

    .line 128
    check-cast v2, Lo;

    add-int/lit8 v3, v1, -0x1

    if-eqz v1, :cond_1

    iput v3, v2, Lo;->b:I

    iget v1, v2, Lo;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lo;->a:I

    .line 125
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    new-instance v1, Lk;

    .line 129
    invoke-direct {v1, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, p0, Laq;->a:Las;

    .line 130
    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    .line 131
    invoke-interface {p1, v0, v1}, Las;->b([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Laq;->a:Las;

    .line 134
    invoke-interface {p0}, Las;->a()V

    return-void

    :catch_0
    move-exception p0

    .line 128
    const-string p1, "LensServiceBridge"

    const-string v0, "Failed to start Lens"

    .line 132
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 128
    throw p0

    .line 127
    :cond_2
    :goto_1
    const-string p0, "LensApi"

    const-string p1, "Failed to start lens."

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Lbs;)Z
    .locals 3

    const-string v0, "LensApi"

    if-nez p1, :cond_0

    const-string v1, "launchLensActivityWithBitmap: bitmap should not be null."

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 59
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p0, "Cannot start Lens with Bitmap when device is locked."

    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 61
    invoke-virtual {v0}, Laq;->g()I

    move-result v0

    sget v1, Lbh;->b:I

    if-ne v0, v1, :cond_2

    .line 62
    invoke-virtual {p2}, Lbs;->b()Lbr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbr;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lbr;->a()Lbs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->a(Lbs;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public final a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 78
    invoke-virtual {v0}, Laq;->f()I

    move-result v0

    sget v1, Lbh;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 79
    invoke-virtual {v0}, Laq;->c()Lz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbs;->a(Lz;)Landroid/os/Bundle;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Laq;->a(Landroid/os/Bundle;)Z

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 81
    invoke-virtual {p0}, Laq;->c()Lz;

    invoke-virtual {p1}, Lbs;->c()Landroid/os/Bundle;

    move-result-object p1

    .line 82
    invoke-static {}, Leb;->c()V

    iput-object p2, p0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    iget-object p2, p0, Laq;->a:Las;

    .line 83
    invoke-interface {p2}, Las;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    sget-object p2, Lo;->c:Lo;

    .line 85
    invoke-virtual {p2}, Lde;->e()Lda;

    move-result-object p2

    check-cast p2, Ln;

    .line 84
    sget v0, Lm;->cN:I

    iget-boolean v1, p2, Lda;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Lda;->b()V

    iput-boolean v2, p2, Lda;->c:Z

    .line 84
    :goto_0
    iget-object v1, p2, Ln;->b:Lde;

    .line 87
    check-cast v1, Lo;

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_1

    iput v3, v1, Lo;->b:I

    iget v0, v1, Lo;->a:I

    const/4 v3, 0x1

    or-int/2addr v0, v3

    iput v0, v1, Lo;->a:I

    .line 88
    invoke-virtual {p2}, Lda;->f()Lde;

    move-result-object p2

    check-cast p2, Lo;

    new-instance v0, Lk;

    .line 89
    invoke-direct {v0, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p0, p0, Laq;->a:Las;

    .line 90
    invoke-virtual {p2}, Lbu;->m()[B

    move-result-object p1

    .line 91
    invoke-interface {p0, p1, v0}, Las;->b([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 87
    const-string p1, "LensServiceBridge"

    const-string p2, "Failed to send Lens service client event"

    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 87
    throw p0

    .line 86
    :cond_2
    :goto_1
    const-string p0, "LensApi"

    const-string p1, "Failed to request pending intent."

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public checkArStickersAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v0, Lbq;

    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p1, v1}, Lbq;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    invoke-virtual {p0, v0}, Lal;->a(Lai;)V

    return-void
.end method

.method public checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 7
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 8
    const-string v0, "8.3"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    .line 10
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v0, Lbq;

    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, Lbq;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    invoke-virtual {p0, v0}, Lal;->a(Lai;)V

    return-void
.end method

.method public checkPendingIntentAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 13
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 14
    const-string v0, "9.72"

    .line 15
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    .line 16
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v0, Lbo;

    .line 17
    invoke-direct {v0, p1}, Lbo;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 18
    invoke-static {}, Leb;->c()V

    new-instance p1, Lan;

    .line 19
    invoke-direct {p1, p0, v0}, Lan;-><init>(Laq;Lap;)V

    invoke-virtual {p0, p1}, Laq;->a(Lap;)V

    return-void
.end method

.method public checkPostCaptureAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 21
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 22
    const-string v0, "8.19"

    .line 23
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    .line 24
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v0, Lbn;

    .line 25
    invoke-direct {v0, p1}, Lbn;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 26
    invoke-static {}, Leb;->c()V

    new-instance p1, Lam;

    .line 27
    invoke-direct {p1, p0, v0}, Lam;-><init>(Laq;Lap;)V

    invoke-virtual {p0, p1}, Laq;->a(Lap;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lbj;

    .line 36
    invoke-direct {v0, p0, p1}, Lbj;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid lens activity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "LensApi"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 0
    :cond_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    iget-object p0, p0, Lal;->f:Lbi;

    iget p0, p0, Lbi;->e:I

    .line 37
    invoke-static {p0}, Lbh;->a(I)I

    move-result p0

    if-nez p0, :cond_1

    sget p0, Lbh;->a:I

    :cond_1
    sget p2, Lbh;->b:I

    if-ne p0, p2, :cond_2

    new-instance p0, Landroid/content/Intent;

    .line 38
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.google.ar.lens"

    const-string v0, "com.google.vr.apps.ornament.app.MainActivity"

    .line 39
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    .line 42
    :cond_3
    new-instance p2, Lbl;

    .line 41
    invoke-direct {p2, p0, p1}, Lbl;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    .locals 2

    .line 43
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object v0

    invoke-virtual {v0}, Lbr;->a()Lbs;

    move-result-object v0

    new-instance v1, Lbk;

    .line 44
    invoke-direct {v1, p0, p1, v0}, Lbk;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;Lbs;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivityWithBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 53
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LensApi"

    const-string p1, "Cannot start Lens with Bitmap when device is locked."

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 56
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr;->a(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lbr;->a()Lbs;

    move-result-object v0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/graphics/Bitmap;Lbs;)Z

    move-result p0

    return p0
.end method

.method public launchLensActivityWithBitmapForTranslate(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 63
    invoke-virtual {v0}, Laq;->d()Lx;

    move-result-object v0

    iget v0, v0, Lx;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "LensApi"

    const-string p1, "Translate is not supported."

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 65
    :cond_0
    sget-object v0, Lbe;->c:Lbe;

    .line 66
    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Lbb;

    .line 67
    sget-object v2, Lbd;->a:Lbd;

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    :goto_0
    iget-object v1, v0, Lbb;->b:Lde;

    .line 69
    check-cast v1, Lbe;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lbe;->b:Lbd;

    iget v2, v1, Lbe;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lbe;->a:I

    .line 71
    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lbe;

    .line 72
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object v1

    iget-object v2, v1, Lbr;->a:Lbs;

    const/4 v3, 0x5

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbs;->e:Ljava/lang/Integer;

    iget-object v2, v1, Lbr;->a:Lbs;

    iput-object v0, v2, Lbs;->d:Lbe;

    .line 74
    invoke-virtual {v1}, Lbr;->a()Lbs;

    move-result-object v0

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/graphics/Bitmap;Lbs;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 76
    invoke-virtual {p0}, Laq;->b()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 77
    invoke-virtual {p0}, Laq;->a()V

    return-void
.end method

.method public requestLensActivityPendingIntent(Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 1

    .line 94
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object v0

    invoke-virtual {v0}, Lbr;->a()Lbs;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    return p0
.end method

.method public requestLensActivityPendingIntentWithBitmap(Landroid/graphics/Bitmap;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 1

    .line 95
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbr;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lbr;->a()Lbs;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    return p0
.end method

.method public requestLensActivityPendingIntentWithBitmapUri(Landroid/content/Context;Landroid/net/Uri;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "com.google.android.googlequicksearchbox"

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 98
    :goto_0
    invoke-static {}, Lbs;->a()Lbr;

    move-result-object p1

    iget-object v0, p1, Lbr;->a:Lbs;

    iput-object p2, v0, Lbs;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lbr;->a()Lbs;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1, p3}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    return p0
.end method
