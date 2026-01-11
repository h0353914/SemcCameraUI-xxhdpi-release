.class public final Lcom/google/android/apps/photos/api/IconQuery;
.super Ljava/lang/Object;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/photos/api/IconQuery$Type;
    }
.end annotation


# static fields
.field public static final MATCH_PATH_BADGE:Ljava/lang/String; = "icon/#/badge"

.field public static final MATCH_PATH_DIALOG:Ljava/lang/String; = "icon/#/dialog"

.field public static final MATCH_PATH_EDITOR:Ljava/lang/String; = "icon/#/editor"

.field public static final MATCH_PATH_ICON_BASE:Ljava/lang/String; = "icon/#"

.field public static final MATCH_PATH_INTERACT:Ljava/lang/String; = "icon/#/interact"

.field public static final MATCH_PATH_SEARCH:Ljava/lang/String; = "icon/#/search"

.field public static final PATH_ICON:Ljava/lang/String; = "icon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriForBadgeIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 63
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForDialogIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForEditorIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForInteractIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 72
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForSearchIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 81
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p1}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
