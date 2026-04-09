.class Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;
.super Ljava/lang/Object;
.source "CapturingModeCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityTypeCode"
.end annotation


# static fields
.field static final FALSE:I = 0x0

.field static final TRUE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCode(Z)I
    .locals 0

    return p0
.end method

.method static toVisibilityType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
