.class public final enum Lcom/google/android/apps/photos/api/IconQuery$Type;
.super Ljava/lang/Enum;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/photos/api/IconQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/apps/photos/api/IconQuery$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

.field public static final enum SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;


# instance fields
.field private final dimensionResourceId:I

.field private final path:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/android/apps/photos/api/IconQuery$Type;
    .locals 5

    .line 28
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    sget-object v1, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    sget-object v2, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    sget-object v3, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    sget-object v4, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/apps/photos/api/IconQuery$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v1, "badge"

    const v2, 0x7f070069

    const-string v3, "BADGE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 32
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v1, "INTERACT"

    const/4 v2, 0x1

    const-string v3, "interact"

    const v4, 0x7f0700f4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 34
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const/4 v1, 0x2

    const-string v2, "dialog"

    const-string v3, "DIALOG"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 35
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v1, "search"

    const v2, 0x7f0701a2

    const-string v3, "SEARCH"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 37
    new-instance v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    const-string v1, "editor"

    const v2, 0x7f070099

    const-string v3, "EDITOR"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/apps/photos/api/IconQuery$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    .line 28
    invoke-static {}, Lcom/google/android/apps/photos/api/IconQuery$Type;->$values()[Lcom/google/android/apps/photos/api/IconQuery$Type;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->path:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/photos/api/IconQuery$Type;
    .locals 1

    .line 28
    const-class v0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/photos/api/IconQuery$Type;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->$VALUES:[Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-virtual {v0}, [Lcom/google/android/apps/photos/api/IconQuery$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/photos/api/IconQuery$Type;

    return-object v0
.end method


# virtual methods
.method public getDimensionResourceId()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->dimensionResourceId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/apps/photos/api/IconQuery$Type;->path:Ljava/lang/String;

    return-object p0
.end method
