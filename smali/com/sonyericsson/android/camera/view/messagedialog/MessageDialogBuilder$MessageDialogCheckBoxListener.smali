.class public Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;
.super Ljava/lang/Object;
.source "MessageDialogBuilder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageDialogCheckBoxListener"
.end annotation


# instance fields
.field private mIsItemChecked:Z

.field private final mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private final mMessageType:Lcom/sonyericsson/android/camera/setting/MessageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/setting/MessageType;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mIsItemChecked:Z

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mMessageType:Lcom/sonyericsson/android/camera/setting/MessageType;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 80
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mIsItemChecked:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mMessageType:Lcom/sonyericsson/android/camera/setting/MessageType;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mIsItemChecked:Z

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 86
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    return-void
.end method
