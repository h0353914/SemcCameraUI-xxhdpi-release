.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
.super Ljava/lang/Object;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mBackground:I

.field private mDescription:I

.field private mIcon:I

.field private mIconPortrait:I

.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iget p1, p2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIcon:I

    .line 178
    iget p1, p2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIconPortrait:I

    .line 179
    iget p1, p2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mBackground:I

    .line 180
    iget p1, p2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mDescription:I

    .line 181
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    return-void
.end method


# virtual methods
.method public background(I)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    .locals 0

    .line 191
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mBackground:I

    return-object p0
.end method

.method public commit()V
    .locals 8

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;

    new-instance v7, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIcon:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIconPortrait:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mBackground:I

    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mDescription:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mText:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-static {v0, v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->-$$Nest$msetResource(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    return-void
.end method

.method public description(I)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mDescription:I

    return-object p0
.end method

.method public icon(I)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    .locals 0

    .line 185
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIcon:I

    const/4 p1, -0x1

    .line 186
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mIconPortrait:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method
