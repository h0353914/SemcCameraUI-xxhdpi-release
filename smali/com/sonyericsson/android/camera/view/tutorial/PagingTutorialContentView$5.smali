.class synthetic Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 749
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :catch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->values()[Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->CONFIRM:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->NORMAL:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
