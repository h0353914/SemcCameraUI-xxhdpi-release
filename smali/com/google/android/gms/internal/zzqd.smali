.class public Lcom/google/android/gms/internal/zzqd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqd$zza;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

.field private zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqd$zza;ZLjava/lang/String;)V
    .locals 15

    move-object v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v4, "PlayLogger"

    const-string v5, "This can\'t happen."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v2

    :goto_0
    new-instance v10, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-object v2, v10

    move-object v3, v9

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v10, v1, Lcom/google/android/gms/internal/zzqd;->zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v11, Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/playlog/internal/zzd;

    move-object/from16 v2, p5

    invoke-direct {v13, v2}, Lcom/google/android/gms/playlog/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzqd$zza;)V

    new-instance v14, Lcom/google/android/gms/common/internal/zzf;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, v14

    move-object v8, v9

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqx;)V

    move-object/from16 v2, p1

    invoke-direct {v11, v2, v12, v13, v14}, Lcom/google/android/gms/playlog/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/playlog/internal/zzd;Lcom/google/android/gms/common/internal/zzf;)V

    iput-object v11, v1, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzf;->stop()V

    return-void
.end method

.method public varargs zza(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v9, Lcom/google/android/gms/playlog/internal/LogEvent;

    const-wide/16 v4, 0x0

    move-object v1, v9

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/playlog/internal/LogEvent;-><init>(JJLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, p0, v9}, Lcom/google/android/gms/playlog/internal/zzf;->zzb(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method

.method public varargs zzb(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqd;->zza(JLjava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method
