.class public interface abstract Lcom/google/android/apps/photos/api/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final BADGE:Ljava/lang/String; = "badge"

.field public static final EDIT:Ljava/lang/String; = "edit"

.field public static final INTERACT:Ljava/lang/String; = "interact"

.field public static final LAUNCH:Ljava/lang/String; = "launch"

.field public static final VALID_CONFIGURATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "interact"

    const-string v2, "launch"

    const-string v3, "badge"

    const-string v4, "edit"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/photos/api/Configuration;->VALID_CONFIGURATIONS:Ljava/util/Set;

    return-void
.end method
