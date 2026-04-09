.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
.super Ljava/lang/Object;
.source "TutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TutorialPageInfo"
.end annotation


# instance fields
.field final pageIndexByType:I

.field final type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 129
    iput p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    return-void
.end method
