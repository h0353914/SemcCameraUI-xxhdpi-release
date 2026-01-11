.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field final synthetic val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->val$openType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$mshow(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->-$$Nest$mstartSlideInAnimation(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    :goto_0
    return-void
.end method
