.class public Landroidx/core/service/quicksettings/TileServiceCompat;
.super Ljava/lang/Object;
.source "TileServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;,
        Landroidx/core/service/quicksettings/TileServiceCompat$Api34Impl;,
        Landroidx/core/service/quicksettings/TileServiceCompat$Api24Impl;
    }
.end annotation


# static fields
.field private static sTileServiceWrapper:Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTileServiceWrapper()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    sput-object v0, Landroidx/core/service/quicksettings/TileServiceCompat;->sTileServiceWrapper:Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;

    return-void
.end method

.method public static setTileServiceWrapper(Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;)V
    .locals 0

    .line 60
    sput-object p0, Landroidx/core/service/quicksettings/TileServiceCompat;->sTileServiceWrapper:Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;

    return-void
.end method

.method public static startActivityAndCollapse(Landroid/service/quicksettings/TileService;Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;)V
    .locals 1

    .line 44
    sget-object v0, Landroidx/core/service/quicksettings/TileServiceCompat;->sTileServiceWrapper:Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/core/service/quicksettings/TileServiceCompat$TileServiceWrapper;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/service/quicksettings/TileServiceCompat$Api34Impl;->startActivityAndCollapse(Landroid/service/quicksettings/TileService;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method
