.class public final enum Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
.super Ljava/lang/Enum;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaContentsResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

.field public static final enum IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
    .locals 2

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    .line 101
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->$values()[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
    .locals 1

    .line 101
    const-class v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
    .locals 1

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    return-object v0
.end method
