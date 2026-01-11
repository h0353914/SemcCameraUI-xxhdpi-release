.class Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;
.super Ljava/lang/Object;
.source "SettingMessageDialogBuilder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSettingMessageDialogCheckBoxChangeListener"
.end annotation


# instance fields
.field private mIsItemChecked:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;->mIsItemChecked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isItemChecked()Z
    .locals 0

    .line 290
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;->mIsItemChecked:Z

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 286
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;->mIsItemChecked:Z

    return-void
.end method
