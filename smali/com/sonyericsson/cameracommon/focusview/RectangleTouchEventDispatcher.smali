.class public Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;
.super Ljava/lang/Object;
.source "RectangleTouchEventDispatcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RectangleTouchEventDispatcher"


# instance fields
.field private mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

.field private mRectangles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/HashMap;

    return-void
.end method

.method private updateTouchView(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Landroid/view/MotionEvent;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 87
    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    iget-object v5, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 99
    invoke-virtual {v0, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRawPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->overwriteTaggedRectangle(Ljava/util/HashMap;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateTouchView(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Landroid/view/MotionEvent;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x7f09015f

    .line 59
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 63
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    :cond_3
    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    return-void
.end method
