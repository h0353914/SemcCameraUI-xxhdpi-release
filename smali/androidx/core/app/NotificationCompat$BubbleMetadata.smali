.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;,
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field private static final FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field private static final FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V
    .locals 0

    .line 8394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8395
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8396
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 8397
    iput p4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    .line 8398
    iput p5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    .line 8399
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8400
    iput p6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    .line 8401
    iput-object p7, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Landroidx/core/app/NotificationCompat$1;)V
    .locals 0

    .line 8349
    invoke-direct/range {p0 .. p7}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;)V

    return-void
.end method

.method public static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8520
    :cond_0
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8499
    :cond_0
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAutoExpandBubble()Z
    .locals 1

    .line 8468
    iget p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 8429
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getDesiredHeight()I
    .locals 0

    .line 8449
    iget p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    return p0
.end method

.method public getDesiredHeightResId()I
    .locals 0

    .line 8459
    iget p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    return p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 8439
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 8411
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 0

    .line 8421
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public isNotificationSuppressed()Z
    .locals 0

    .line 8477
    iget p0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFlags(I)V
    .locals 0

    .line 8482
    iput p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    return-void
.end method
